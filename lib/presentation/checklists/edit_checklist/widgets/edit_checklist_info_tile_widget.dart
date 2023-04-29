import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:success_check/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:success_check/domain/checklists/value_objects.dart';
import 'package:success_check/presentation/checklists/components/checklist_info_tile_component.dart';
import 'package:success_check/presentation/checklists/components/checklist_statistics_component.dart';
import 'package:success_check/presentation/checklists/components/completion_status_checkbox_component.dart';
import 'package:success_check/presentation/checklists/components/validation_error_message_component.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

class EditChecklistInfoTile extends HookWidget {
  const EditChecklistInfoTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<ChecklistEditBloc, ChecklistEditState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.checklist.name.getOrCrash();
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChecklistInfoTile.editable(
                textEditingController: textEditingController,
                onChanged: (value) =>
                    BlocProvider.of<ChecklistEditBloc>(context)
                        .add(ChecklistEditEvent.nameChanged(value)),
                completionStatusCheckbox: CompletionStatusCheckbox(
                  isCompleted: () => state.checklist.isCompleted(),
                  onChanged: (value) {
                    BlocProvider.of<ChecklistEditBloc>(context).add(
                        ChecklistEditEvent.completionStatusChanged(
                            isDone: value!));
                  },
                  decoration: checkboxDecoration(insideColoredCard: true),
                  checkColor: whiteColorWithOpacity,
                  size: 30,
                ),
                statistics: ChecklistStatistics(checklist: state.checklist),
              ),
              if (state.autovalidateMode == AutovalidateMode.always &&
                  state.checklist.name.value.isLeft()) ...[
                ValidationErrorMessage(
                  message: _validationError(state.checklist.name),
                ),
              ]
            ],
          ),
        );
      },
    );
  }

  String _validationError(ChecklistName name) {
    return name.value.fold(
      (f) => f.maybeMap(
        empty: (f) => 'Checklist name cannot be empty',
        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
        orElse: () => '',
      ),
      (r) => '',
    );
  }
}
