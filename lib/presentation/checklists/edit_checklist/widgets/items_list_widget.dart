import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/checklists/components/completion_status_checkbox_component.dart';
import 'package:listzen/presentation/checklists/components/item_tile_component.dart';
import 'package:listzen/presentation/checklists/components/validation_error_message_component.dart';
import 'package:listzen/presentation/core/theming/style.dart';

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
            builder: (context, state) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: backgroundColor,
                  shadowColor: Colors.transparent,
                ),
                child: ReorderableListView.builder(
                  shrinkWrap: true,
                  itemCount: state.checklist.items.length,
                  itemBuilder: (context, index) {
                    final item = state.checklist.items[index];
                    return Column(
                      key: ValueKey(item.id),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        EditItemTile(
                          index: index,
                        ),
                        if (state.autovalidateMode == AutovalidateMode.always &&
                            item.name.value.isLeft()) ...[
                          ValidationErrorMessage(
                            message: _validationError(item.name),
                          ),
                        ],
                        const Divider(),
                      ],
                    );
                  },
                  onReorder: (oldIndex, newIndex) =>
                      BlocProvider.of<ChecklistEditBloc>(context).add(
                    ChecklistEditEvent.itemsReordered(
                      oldIndex: oldIndex,
                      newIndex: newIndex,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _validationError(ItemName name) => name.value.fold(
        (f) => f.maybeMap(
          empty: (_) => 'Cannot be empty',
          exceedingLength: (_) => 'Too long',
          multiline: (_) => 'Has to be in a single line',
          orElse: () => '',
        ),
        (_) => '',
      );
}

class EditItemTile extends HookWidget {
  final int index;

  const EditItemTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final item = BlocProvider.of<ChecklistEditBloc>(context)
        .state
        .checklist
        .items[index];

    final textEditingController = useTextEditingController(
        text: item.name.value.fold((f) => f.failedValue, (name) => name));

    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
      builder: (context, state) => ItemTile.editable(
        textEditingController: textEditingController,
        onChanged: (value) => BlocProvider.of<ChecklistEditBloc>(context).add(
          ChecklistEditEvent.itemNameChanged(
            index: index,
            name: value!,
          ),
        ),
        autofocus: item.isNew,
        completionStatusCheckbox: CompletionStatusCheckbox(
          isCompleted: () => BlocProvider.of<ChecklistEditBloc>(context)
              .state
              .checklist
              .items[index]
              .done,
          onChanged: (value) => BlocProvider.of<ChecklistEditBloc>(context).add(
            ChecklistEditEvent.itemCompletionStatusChanged(
              index: index,
              isDone: value!,
            ),
          ),
          insideCard: false,
        ),
        onRemove: () => BlocProvider.of<ChecklistEditBloc>(context).add(
          ChecklistEditEvent.itemRemoved(index: index),
        ),
        reorderable: true,
        index: index,
      ),
    );
  }
}
