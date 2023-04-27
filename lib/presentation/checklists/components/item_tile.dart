import 'package:flutter/material.dart';
import 'package:success_check/domain/checklists/value_objects.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

class ItemTile extends StatelessWidget {
  final Widget content;
  final Widget? completionStatusCheckbox;
  final Function()? onRemove;

  const ItemTile._({
    required this.content,
    this.completionStatusCheckbox,
    this.onRemove,
  });

  factory ItemTile.readOnly({
    required String name,
    Widget? completionStatusCheckbox,
  }) {
    return ItemTile._(
      content: ReadOnlyItemNameField(
        name: name,
      ),
      completionStatusCheckbox: completionStatusCheckbox,
    );
  }

  factory ItemTile.editable({
    required TextEditingController textEditingController,
    required Function(String?) onChanged,
    required bool autofocus,
    Widget? completionStatusCheckbox,
    Function()? onRemove,
  }) {
    return ItemTile._(
      content: EditableItemNameField(
        textEditingController: textEditingController,
        onChanged: onChanged,
        autofocus: autofocus,
      ),
      completionStatusCheckbox: completionStatusCheckbox,
      onRemove: onRemove,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
        if (onRemove != null) ...[
          InkWell(
            onTap: onRemove,
            child: Icon(
              Icons.remove_circle,
              color: greyColor,
            ),
          ),
        ],
      ],
    );
  }
}

class ReadOnlyItemNameField extends StatelessWidget {
  final String name;

  const ReadOnlyItemNameField({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: buttonTextStyle,
    );
  }
}

class EditableItemNameField extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String?) onChanged;
  final bool autofocus;

  const EditableItemNameField({
    super.key,
    required this.textEditingController,
    required this.onChanged,
    required this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      controller: textEditingController,
      decoration: noBordersInputDecoration,
      maxLength: ItemName.maxLength,
      onChanged: onChanged,
    );
  }
}
