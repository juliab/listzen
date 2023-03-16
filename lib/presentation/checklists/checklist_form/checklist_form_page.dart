import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:success_check/application/checklists/checklist_form/checklist_form_bloc.dart';

import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/checklists/checklist_form/misc/item_presentation_classes.dart';
import 'package:success_check/presentation/checklists/checklist_form/widgets/add_item_tile_widget.dart';
import 'package:success_check/presentation/checklists/checklist_form/widgets/items_list_widget.dart';
import 'package:success_check/presentation/checklists/checklist_form/widgets/name_field_widget.dart';
import 'package:success_check/presentation/routes/router.gr.dart';

class ChecklistFormPage extends StatelessWidget {
  final Option<Checklist> editedChecklistOption;

  const ChecklistFormPage({super.key, required this.editedChecklistOption});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChecklistFormBloc>()
        ..add(ChecklistFormEvent.initialized(editedChecklistOption)),
      child: BlocConsumer<ChecklistFormBloc, ChecklistFormState>(
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
                      .popUntilRouteWithName(ChecklistsOverviewPageRoute.name);
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
      appBar: AppBar(
        title: BlocBuilder<ChecklistFormBloc, ChecklistFormState>(
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
              BlocProvider.of<ChecklistFormBloc>(context)
                  .add(const ChecklistFormEvent.saved());
            },
          ),
        ],
      ),
      body: BlocBuilder<ChecklistFormBloc, ChecklistFormState>(
        buildWhen: (previous, current) =>
            previous.autovalidateMode != current.autovalidateMode,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => FormItems(),
            child: Form(
                autovalidateMode: state.autovalidateMode,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      NameField(),
                      ItemsList(),
                      AddItemTile(),
                    ],
                  ),
                )),
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
