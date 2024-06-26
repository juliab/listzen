import 'package:flutter/material.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

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
      padding: StandardPadding.edgeInsetsSymmetric(
          context: context, horizontalFactor: 1.2),
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
            const Spacing.horizontal(factor: 1.2),
          ],
          Expanded(
            child: content,
          ),
          if (statistics != null) ...[
            const Spacing.horizontal(factor: 1.2),
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
      style: mainTextStyle.copyWith(
        color: cardForegroundColor,
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
    return Semantics(
      identifier: 'checklist_name_input',
      child: TextFormField(
        autofocus: autofocus,
        textCapitalization: TextCapitalization.sentences,
        controller: textEditingController,
        decoration: cardInputDecoration.copyWith(
          hintText: 'Enter checklist name',
          hintStyle: TextStyle(
            color: cardForegroundColor.withOpacity(0.4),
            fontWeight: FontWeight.normal,
          ),
        ),
        maxLength: ChecklistName.maxString,
        onChanged: onChanged,
        style: mainTextStyle.copyWith(
          color: cardForegroundColor,
        ),
        cursorColor: cardForegroundColor,
      ),
    );
  }
}
