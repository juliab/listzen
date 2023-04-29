import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:success_check/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:success_check/domain/checklists/value_objects.dart';
import 'package:success_check/presentation/checklists/components/completion_status_checkbox_component.dart';
import 'package:success_check/presentation/checklists/components/item_tile_component.dart';
import 'package:success_check/presentation/checklists/components/validation_error_message_component.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: state.checklist.items.length,
            itemBuilder: (context, index) {
              final item = state.checklist.items[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EditItemTile(
                    index: index,
                    key: ValueKey(item.id),
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
          ),
        );
      },
    );
  }

  String _validationError(ItemName name) {
    return name.value.fold(
      (f) => f.maybeMap(
        empty: (_) => 'Cannot be empty',
        exceedingLength: (_) => 'Too long',
        multiline: (_) => 'Has to be in a single line',
        orElse: () => '',
      ),
      (_) => '',
    );
  }
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
      builder: (context, state) {
        return ItemTile.editable(
          textEditingController: textEditingController,
          onChanged: (value) {
            BlocProvider.of<ChecklistEditBloc>(context).add(
              ChecklistEditEvent.itemNameChanged(
                index: index,
                name: value!,
              ),
            );
          },
          autofocus: item.isNew,
          completionStatusCheckbox: CompletionStatusCheckbox(
            isCompleted: () => BlocProvider.of<ChecklistEditBloc>(context)
                .state
                .checklist
                .items[index]
                .done,
            onChanged: (value) {
              BlocProvider.of<ChecklistEditBloc>(context).add(
                ChecklistEditEvent.itemCompletionStatusChanged(
                  index: index,
                  isDone: value!,
                ),
              );
            },
            decoration: checkboxDecoration(insideColoredCard: false),
            checkColor: Colors.green,
          ),
          onRemove: () {
            BlocProvider.of<ChecklistEditBloc>(context).add(
              ChecklistEditEvent.itemRemoved(index: index),
            );
          },
        );
      },
    );
  }
}
