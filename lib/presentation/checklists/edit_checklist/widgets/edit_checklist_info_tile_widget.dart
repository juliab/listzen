import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/checklists/components/checklist_info_tile.dart';
import 'package:listzen/presentation/checklists/components/checklist_statistics.dart';
import 'package:listzen/presentation/checklists/components/completion_status_checkbox.dart';
import 'package:listzen/presentation/checklists/components/validation_error_message.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

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
        return StandardPadding.vertical(
          factor: 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildChecklistNameCard(
                context,
                state.checklist,
                textEditingController,
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

  Widget _buildChecklistNameCard(
    BuildContext context,
    Checklist checklist,
    TextEditingController textEditingController,
  ) {
    return ChecklistInfoTile.editable(
      color: checklist.color,
      textEditingController: textEditingController,
      onChanged: (value) => context
          .read<ChecklistEditBloc>()
          .add(ChecklistEditEvent.nameChanged(value)),
      completionStatusCheckbox: _buildCheckbox(context, checklist),
      statistics: ChecklistStatistics(checklist: checklist),
      autofocus: autofocus,
    );
  }

  Widget _buildCheckbox(BuildContext context, Checklist checklist) {
    return CompletionStatusCheckbox(
      isCompleted: checklist.isCompleted,
      onChanged: (value) => context.read<ChecklistEditBloc>().add(
            ChecklistEditEvent.completionStatusChanged(isDone: value!),
          ),
      insideCard: true,
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
