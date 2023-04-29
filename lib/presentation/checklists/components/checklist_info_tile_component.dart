import 'package:flutter/material.dart';
import 'package:success_check/domain/checklists/value_objects.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

class ChecklistInfoTile extends StatelessWidget {
  final Widget content;
  final Widget? completionStatusCheckbox;
  final Widget? statistics;

  const ChecklistInfoTile._({
    required this.content,
    this.completionStatusCheckbox,
    this.statistics,
  });

  factory ChecklistInfoTile.readOnly({
    required String name,
    Widget? completionStatusCheckbox,
    Widget? statistics,
  }) {
    return ChecklistInfoTile._(
      content: ReadOnlyChecklistNameField(
        name: name,
      ),
      completionStatusCheckbox: completionStatusCheckbox,
      statistics: statistics,
    );
  }

  factory ChecklistInfoTile.editable({
    required TextEditingController textEditingController,
    required Function(String value) onChanged,
    Widget? completionStatusCheckbox,
    Widget? statistics,
  }) {
    return ChecklistInfoTile._(
      content: EditableChecklistNameField(
        textEditingController: textEditingController,
        onChanged: onChanged,
      ),
      completionStatusCheckbox: completionStatusCheckbox,
      statistics: statistics,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        gradient: cardGradient,
        borderRadius: cardBorderRadius,
      ),
      height: cardHeight,
      child: Row(
        children: [
          if (completionStatusCheckbox != null) ...[
            completionStatusCheckbox!,
            const SizedBox(
              width: 20,
            ),
          ],
          Expanded(
            child: content,
          ),
          if (statistics != null) ...[statistics!],
        ],
      ),
    );
  }
}

class ReadOnlyChecklistNameField extends StatelessWidget {
  final String name;

  const ReadOnlyChecklistNameField({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: buttonTextStyle,
    );
  }
}

class EditableChecklistNameField extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String value) onChanged;

  const EditableChecklistNameField({
    super.key,
    required this.textEditingController,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: cardInputDecoration,
      maxLength: ChecklistName.maxString,
      onChanged: onChanged,
    );
  }
}
