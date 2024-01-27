import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/checklists/edit_checklist/edit_checklist_scaffold.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/core/manage_focus_cubit/manage_focus_cubit.dart';
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
        _editBlocProvider(),
        _focusCubitProvider(),
      ],
      child: _editBlocConsumer(
        child: EditChecklistPageScaffold(
          autofocus: editedChecklistOption.isNone(),
        ),
      ),
    );
  }

  BlocProvider<ChecklistEditBloc> _editBlocProvider() {
    return BlocProvider<ChecklistEditBloc>(
      create: (context) => getIt<ChecklistEditBloc>()
        ..add(ChecklistEditEvent.initialized(editedChecklistOption)),
    );
  }

  BlocProvider<ManageFocusCubit> _focusCubitProvider() {
    return BlocProvider<ManageFocusCubit>(
      create: (context) {
        final itemsNumber = editedChecklistOption.fold(
            () => 0, (checklist) => checklist.items.length);
        return getIt<ManageFocusCubit>()..initializeFocusNodes(itemsNumber);
      },
    );
  }

  BlocConsumer<ChecklistEditBloc, ChecklistEditState> _editBlocConsumer({
    required Widget child,
  }) {
    return BlocConsumer<ChecklistEditBloc, ChecklistEditState>(
      listenWhen: (previous, current) =>
          previous.saveFailureOrSuccessOption !=
          current.saveFailureOrSuccessOption,
      listener: _listenToSaveResult,
      buildWhen: (previous, current) =>
          previous.isSaving != current.isSaving ||
          previous.isEditing != current.isEditing,
      builder: (context, state) {
        // show progress indicator if checklist data is loading
        if (editedChecklistOption.isSome() && !state.isEditing) {
          return const Center(child: CircularProgressIndicator());
        }
        return Stack(
          children: [
            child,
            // show progress indicator when saving
            InProgressOverlay(
              inProgress: state.isSaving,
              text: 'Saving',
            ),
          ],
        );
      },
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
          (_) => AutoRouter.of(context)
              .popUntilRouteWithName(ChecklistsOverviewRoute.name),
        );
      },
    );
  }
}
