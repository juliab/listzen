import 'package:flutter/material.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class ItemTile extends StatelessWidget {
  final Widget content;
  final Widget? completionStatusCheckbox;
  final Function()? onRemove;
  final bool reorderable;
  final int? index;
  final FocusNode? focusNode;

  const ItemTile._({
    required this.content,
    this.completionStatusCheckbox,
    this.onRemove,
    this.reorderable = false,
    this.index,
    this.focusNode,
  }) : assert(reorderable && index != null || !reorderable,
            'index must be set for reorderable checklist item');

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
    required Function(String?) onSubmitted,
    Widget? completionStatusCheckbox,
    Function()? onRemove,
    bool reorderable = false,
    int? index,
    FocusNode? focusNode,
  }) {
    return ItemTile._(
      content: EditableItemNameField(
        textEditingController: textEditingController,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
      ),
      completionStatusCheckbox: completionStatusCheckbox,
      onRemove: onRemove,
      reorderable: reorderable,
      index: index,
      focusNode: focusNode,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (reorderable) ...[
          const ReorderableDragStartListener(
            index: 0,
            child: Icon(
              Icons.swap_vert_outlined,
              color: greyColor,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
        if (completionStatusCheckbox != null) ...[
          completionStatusCheckbox!,
          const SizedBox(
            width: 15,
          ),
        ],
        Expanded(
          child: content,
        ),
        if (onRemove != null) ...[
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: onRemove,
            child: const Icon(
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
      style: mainTextStyle,
    );
  }
}

class EditableItemNameField extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String?) onChanged;
  final Function(String?) onSubmitted;
  final FocusNode? focusNode;

  const EditableItemNameField({
    super.key,
    required this.textEditingController,
    required this.onChanged,
    required this.onSubmitted,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textCapitalization: TextCapitalization.sentences,
      decoration: noBordersInputDecoration,
      maxLength: ItemName.maxLength,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      focusNode: focusNode,
      onEditingComplete: () {},
      style: mainTextStyle,
    );
  }
}
