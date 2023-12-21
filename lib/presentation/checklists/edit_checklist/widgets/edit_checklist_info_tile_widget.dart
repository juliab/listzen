import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/checklists/components/checklist_info_tile.dart';
import 'package:listzen/presentation/checklists/components/checklist_statistics.dart';
import 'package:listzen/presentation/checklists/components/completion_status_checkbox.dart';
import 'package:listzen/presentation/checklists/components/validation_error_message.dart';

class EditChecklistInfoTile extends HookWidget {
  final bool autofocus;

  const EditChecklistInfoTile({
    super.key,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
      builder: (context, state) {
        if (state.isEditing) {
          textEditingController.text = state.checklist.name.getOrCrash();
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChecklistInfoTile.editable(
                color: state.checklist.color,
                textEditingController: textEditingController,
                onChanged: (value) =>
                    BlocProvider.of<ChecklistEditBloc>(context)
                        .add(ChecklistEditEvent.nameChanged(value)),
                completionStatusCheckbox: CompletionStatusCheckbox(
                  isCompleted: () => state.checklist.isCompleted(),
                  onChanged: (value) =>
                      BlocProvider.of<ChecklistEditBloc>(context).add(
                    ChecklistEditEvent.completionStatusChanged(isDone: value!),
                  ),
                  insideCard: true,
                ),
                statistics: ChecklistStatistics(checklist: state.checklist),
                autofocus: autofocus,
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
