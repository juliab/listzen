import 'package:flutter/material.dart';
import 'package:listzen/domain/checklists/card_color.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class ChecklistInfoTile extends StatelessWidget {
  final ChecklistColor color;
  final Widget content;
  final Widget? completionStatusCheckbox;
  final Widget? statistics;

  const ChecklistInfoTile._({
    required this.color,
    required this.content,
    this.completionStatusCheckbox,
    this.statistics,
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
    required bool focus,
    required TextEditingController textEditingController,
    required Function(String value) onChanged,
    Widget? completionStatusCheckbox,
    Widget? statistics,
  }) {
    return ChecklistInfoTile._(
      color: color,
      content: EditableChecklistNameField(
        focus: focus,
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
  final bool focus;
  final TextEditingController textEditingController;
  final Function(String value) onChanged;

  const EditableChecklistNameField({
    super.key,
    required this.focus,
    required this.textEditingController,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (!focus) {
      FocusScope.of(context).requestFocus(FocusNode());
    }
    return TextFormField(
      autofocus: focus,
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
