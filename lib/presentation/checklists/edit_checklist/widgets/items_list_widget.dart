import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/checklists/components/completion_status_checkbox.dart';
import 'package:listzen/presentation/checklists/components/item_tile.dart';
import 'package:listzen/presentation/checklists/components/validation_error_message.dart';
import 'package:listzen/presentation/core/manage_focus_cubit/manage_focus_cubit.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    // ReorderableListView is wrapped with Overlay as a workaround for Flutter
    // issue https://github.com/flutter/flutter/issues/88570
    return Overlay(
      initialEntries: [
        OverlayEntry(
          builder: (context) =>
              BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
            builder: (context, state) => StandardPadding.horizontal(
              factor: 0.3,
              child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: backgroundColor,
                  shadowColor: Colors.transparent,
                ),
                child: ItemsListBuider(
                  items: state.checklist.items,
                  autovalidateMode: state.autovalidateMode,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemsListBuider extends StatelessWidget {
  final List<Item> items;
  final AutovalidateMode autovalidateMode;

  const ItemsListBuider({
    super.key,
    required this.items,
    required this.autovalidateMode,
  });

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Column(
          key: ValueKey(item.id),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EditItemTile(
              index: index,
              focusNode: context.read<ManageFocusCubit>().state.nodes[index],
            ),
            if (autovalidateMode == AutovalidateMode.always &&
                item.name.value.isLeft()) ...[
              ValidationErrorMessage(
                message: _validationError(item.name),
              ),
            ],
            const Divider(),
          ],
        );
      },
      onReorderStart: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      onReorder: (oldIndex, newIndex) => context.read<ChecklistEditBloc>().add(
            ChecklistEditEvent.itemsReordered(
              oldIndex: oldIndex,
              newIndex: newIndex,
            ),
          ),
      footer: const Spacing.vertical(factor: 7),
    );
  }

  String _validationError(ItemName name) => name.value.fold(
        (f) => f.maybeMap(
          exceedingLength: (_) => 'Too long',
          multiline: (_) => 'Has to be in a single line',
          orElse: () => '',
        ),
        (_) => '',
      );
}

class EditItemTile extends HookWidget {
  final int index;
  final FocusNode focusNode;

  const EditItemTile({
    super.key,
    required this.index,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final item = context.read<ChecklistEditBloc>().state.checklist.items[index];

    final textEditingController = useTextEditingController(
        text: item.name.value.fold((f) => f.failedValue, (name) => name));

    return ItemTile.editable(
      textEditingController: textEditingController,
      onChanged: (value) => _updateName(context, value!),
      onSubmitted: (_) => _addItem(context),
      completionStatusCheckbox: _buildCheckbox(context),
      onRemove: () => _removeItem(context),
      reorderable: true,
      index: index,
      focusNode: focusNode,
    );
  }

  void _updateName(BuildContext context, String name) {
    context.read<ChecklistEditBloc>().add(
          ChecklistEditEvent.itemNameChanged(
            index: index,
            name: name,
          ),
        );
  }

  void _addItem(BuildContext context) {
    context.read<ManageFocusCubit>().addNodeAndRequestFocus();
    context.read<ChecklistEditBloc>().add(const ChecklistEditEvent.itemAdded());
  }

  Widget _buildCheckbox(BuildContext context) {
    return CompletionStatusCheckbox(
      isCompleted: () =>
          context.read<ChecklistEditBloc>().state.checklist.items[index].done,
      onChanged: (value) => context.read<ChecklistEditBloc>().add(
            ChecklistEditEvent.itemCompletionStatusChanged(
              index: index,
              isDone: value!,
            ),
          ),
      insideCard: false,
    );
  }

  void _removeItem(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    context
        .read<ChecklistEditBloc>()
        .add(ChecklistEditEvent.itemRemoved(index: index));
    context.read<ManageFocusCubit>().disposeNode(index);
  }
}
