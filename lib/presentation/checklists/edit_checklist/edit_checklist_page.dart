import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/edit_checklist_info_tile_widget.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/items_list_widget.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/core/manage_focus_cubit/manage_focus_cubit.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/in_progress_overlay.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class EditChecklistPage extends StatelessWidget {
  final Option<Checklist> editedChecklistOption;

  const EditChecklistPage({
    super.key,
    required this.editedChecklistOption,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChecklistEditBloc>(
          create: (context) => getIt<ChecklistEditBloc>()
            ..add(ChecklistEditEvent.initialized(editedChecklistOption)),
        ),
        BlocProvider<ManageFocusCubit>(
          create: (context) {
            final itemsNumber = editedChecklistOption.fold(
                () => 0, (checklist) => checklist.items.length);
            return getIt<ManageFocusCubit>()..initializeFocusNodes(itemsNumber);
          },
        ),
      ],
      child: BlocConsumer<ChecklistEditBloc, ChecklistEditState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
            current.saveFailureOrSuccessOption,
        listener: _listenToSaveResult,
        buildWhen: (previous, current) =>
            previous.isSaving != current.isSaving ||
            previous.isEditing != current.isEditing,
        builder: (context, state) {
          if (editedChecklistOption.isSome() && !state.isEditing) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          return Stack(
            children: [
              EditChecklistPageScaffold(
                autofocus: editedChecklistOption.isNone(),
              ),
              InProgressOverlay(
                inProgress: state.isSaving,
                text: 'Saving',
              ),
            ],
          );
        },
      ),
    );
  }

  void _listenToSaveResult(BuildContext context, ChecklistEditState state) {
    state.saveFailureOrSuccessOption.fold(
      () {},
      (either) {
        either.fold(
          (failure) {
            ErrorFlushbar(
              title: 'Could not save checklist.',
              message: failure.map(
                unexpected: (_) =>
                    'Unexpected error occured, please contact support.',
                insufficientPermissions: (_) => 'Insufficient permissions',
                unableToAccess: (_) => 'Unable to access checklist',
                databaseError: (_) => "Unexpected error when saving checklist",
              ),
              context: context,
            ).show();
          },
          (_) {
            AutoRouter.of(context)
                .popUntilRouteWithName(ChecklistsOverviewRoute.name);
          },
        );
      },
    );
  }
}

class EditChecklistPageScaffold extends StatelessWidget {
  final bool autofocus;

  const EditChecklistPageScaffold({
    super.key,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: FloatingDraggableWidget(
        mainScreenWidget: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          appBar: AppBar(
            leading: const CancelButton(),
            title: const ScreenTitle(),
            actions: const [
              SaveChecklistButton(),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                EditChecklistInfoTile(
                  autofocus: autofocus,
                ),
                const Flexible(child: ItemsList()),
              ],
            ),
          ),
        ),
        floatingWidget: const AddItemButton(),
        floatingWidgetHeight: floatingButtonSize,
        floatingWidgetWidth: floatingButtonSize,
      ),
    );
  }
}

class SaveChecklistButton extends StatelessWidget {
  const SaveChecklistButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.check,
        color: greenColor,
      ),
      onPressed: () => BlocProvider.of<ChecklistEditBloc>(context)
          .add(const ChecklistEditEvent.saved()),
    );
  }
}

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
      buildWhen: (previous, current) => previous.isEditing != current.isEditing,
      builder: (context, state) => Center(
        child: Text(
          state.isEditing ? 'Edit checklist' : 'Create checklist',
        ),
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.cancel_outlined,
        color: greyColor,
      ),
      onPressed: () => AutoRouter.of(context).pop(),
    );
  }
}

class AddItemButton extends StatelessWidget {
  const AddItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        BlocProvider.of<ManageFocusCubit>(context).addNodeAndRequestFocus();
        BlocProvider.of<ChecklistEditBloc>(context).add(
          const ChecklistEditEvent.itemAdded(),
        );
      },
    );
  }
}
