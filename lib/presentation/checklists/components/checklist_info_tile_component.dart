import 'package:flutter/material.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class ChecklistInfoTile extends StatelessWidget {
  final ChecklistColor color;
  final Widget content;
  final Widget? completionStatusCheckbox;
  final Widget? statistics;
  final bool autofocus;

  const ChecklistInfoTile._({
    required this.color,
    required this.content,
    this.completionStatusCheckbox,
    this.statistics,
    this.autofocus = false,
  });

  factory ChecklistInfoTile.readOnly({
    required ChecklistColor color,
    required String name,
    Widget? completionStatusCheckbox,
    Widget? statistics,
  }) {
    return ChecklistInfoTile._(
      color: color,
      content: ReadOnlyChecklistNameField(
        name: name,
      ),
      completionStatusCheckbox: completionStatusCheckbox,
      statistics: statistics,
    );
  }

  factory ChecklistInfoTile.editable({
    required ChecklistColor color,
    required TextEditingController textEditingController,
    required Function(String value) onChanged,
    Widget? completionStatusCheckbox,
    Widget? statistics,
    required bool autofocus,
  }) {
    return ChecklistInfoTile._(
      color: color,
      content: EditableChecklistNameField(
        textEditingController: textEditingController,
        onChanged: onChanged,
        autofocus: autofocus,
      ),
      completionStatusCheckbox: completionStatusCheckbox,
      statistics: statistics,
      autofocus: autofocus,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color.colorValues.map((value) => Color(value)).toList(),
        ),
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
          if (statistics != null) ...[
            const SizedBox(
              width: 20,
            ),
            statistics!
          ],
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
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(0.7),
      ),
    );
  }
}

class EditableChecklistNameField extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String value) onChanged;
  final bool autofocus;

  const EditableChecklistNameField({
    super.key,
    required this.textEditingController,
    required this.onChanged,
    required this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      textCapitalization: TextCapitalization.sentences,
      controller: textEditingController,
      decoration:
          cardInputDecoration.copyWith(hintText: 'Enter checklist name'),
      maxLength: ChecklistName.maxString,
      onChanged: onChanged,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(0.7),
      ),
    );
  }
}
