import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/checklists/edit_checklist/widgets/add_item_fab.dart';
import 'package:success_check/presentation/checklists/edit_checklist/widgets/edit_checklist_info_tile.dart';
import 'package:success_check/presentation/checklists/edit_checklist/widgets/items_list_widget.dart';
import 'package:success_check/presentation/routes/app_router.dart';

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
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () => null,
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                    unexpected: (_) =>
                        'Unexpected error occured, please contact support',
                    insufficientPermissions: (_) => 'Insufficient permissions',
                    unableToAccess: (_) => "Couldn't update checklist",
                  )).show(context);
                },
                (_) {
                  AutoRouter.of(context)
                      .popUntilRouteWithName(ChecklistsOverviewRoute.name);
                },
              );
            },
          );
        },
        buildWhen: (previous, current) => previous.isSaving != current.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              const ChecklistFormPageScaffold(),
              SavingInProgressOverlay(
                isSaving: state.isSaving,
              ),
            ],
          );
        },
      ),
    );
  }
}

class ChecklistFormPageScaffold extends StatelessWidget {
  const ChecklistFormPageScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) {
            return Text(
                state.isEditing ? 'Edit checklist' : 'Create checklist');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              BlocProvider.of<ChecklistEditBloc>(context)
                  .add(const ChecklistEditEvent.saved());
            },
          ),
        ],
      ),
      floatingActionButton: const AddItemFloatingActionButton(),
      body: BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
        buildWhen: (previous, current) =>
            previous.autovalidateMode != current.autovalidateMode,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  EditChecklistInfoTile(),
                  ItemsList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    super.key,
    required this.isSaving,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
