import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/edit_checklist_info_tile_widget.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/items_list_widget.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/in_progress_overlay.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class EditChecklistPage extends StatelessWidget {
  final Option<Checklist> editedChecklistOption;

  const EditChecklistPage({super.key, required this.editedChecklistOption});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChecklistEditBloc>(
      create: (context) => getIt<ChecklistEditBloc>()
        ..add(ChecklistEditEvent.initialized(editedChecklistOption)),
      child: BlocConsumer<ChecklistEditBloc, ChecklistEditState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
            current.saveFailureOrSuccessOption,
        listener: _listenToSaveResult,
        buildWhen: (previous, current) => previous.isSaving != current.isSaving,
        builder: (context, state) => Stack(
          children: [
            const EditChecklistPageScaffold(),
            InProgressOverlay(
              inProgress: state.isSaving,
              text: 'Saving',
            ),
          ],
        ),
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
  const EditChecklistPageScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.cancel_outlined,
            color: greyColor,
          ),
          onPressed: () => AutoRouter.of(context).pop(),
        ),
        title: BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) => Text(
            state.isEditing ? 'Edit checklist' : 'Create checklist',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.check,
              color: greenColor,
            ),
            onPressed: () => BlocProvider.of<ChecklistEditBloc>(context)
                .add(const ChecklistEditEvent.saved()),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          FocusManager.instance.primaryFocus?.unfocus();
          BlocProvider.of<ChecklistEditBloc>(context).add(
            const ChecklistEditEvent.itemAdded(),
          );
        },
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              EditChecklistInfoTile(),
              Flexible(child: ItemsList()),
            ],
          ),
        ),
      ),
    );
  }
}
