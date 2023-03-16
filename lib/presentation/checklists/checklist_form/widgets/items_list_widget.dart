import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:success_check/application/checklists/checklist_form/checklist_form_bloc.dart';
import 'package:success_check/domain/checklists/value_objects.dart';
import 'package:success_check/presentation/checklists/checklist_form/misc/build_context_x.dart';

import 'package:success_check/presentation/checklists/checklist_form/misc/item_presentation_classes.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistFormBloc, ChecklistFormState>(
      buildWhen: (previous, current) {
        return previous.checklist.items.length !=
            current.checklist.items.length;
      },
      builder: (context, state) {
        return Consumer<FormItems>(
          builder: (context, formItems, child) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: formItems.value.length,
              itemBuilder: (context, index) {
                return ItemTile(
                  index: index,
                  key: ValueKey(context.formItems[index].id),
                );
              },
            );
          },
        );
      },
    );
  }
}

class ItemTile extends HookWidget {
  final int index;

  const ItemTile({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textEditingController =
        useTextEditingController(text: context.formItems[index].name);

    return BlocBuilder<ChecklistFormBloc, ChecklistFormState>(
      builder: (context, state) {
        return Slidable(
          endActionPane: ActionPane(
            motion: const DrawerMotion(),
            extentRatio: 0.25,
            children: [
              SlidableAction(
                onPressed: (context) {
                  context.formItems = context.formItems.where((element) {
                    return element != context.formItems[index];
                  }).toList();
                  BlocProvider.of<ChecklistFormBloc>(context)
                      .add(ChecklistFormEvent.itemsChanged(context.formItems));
                },
                icon: Icons.delete,
                label: 'Delete',
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.white,
              ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: ListTile(
              leading: Checkbox(
                onChanged: (value) {
                  context.formItems[index] =
                      context.formItems[index].copyWith(done: value!);
                  BlocProvider.of<ChecklistFormBloc>(context)
                      .add(ChecklistFormEvent.itemsChanged(context.formItems));
                },
                value: context.formItems[index].done,
              ),
              title: TextFormField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  counterText: '',
                  border: InputBorder.none,
                ),
                maxLength: ItemName.maxLength,
                onChanged: (value) {
                  context.formItems[index] =
                      context.formItems[index].copyWith(name: value);
                  BlocProvider.of<ChecklistFormBloc>(context)
                      .add(ChecklistFormEvent.itemsChanged(context.formItems));
                },
                validator: (_) => BlocProvider.of<ChecklistFormBloc>(context)
                    .state
                    .checklist
                    .items[index]
                    .name
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        empty: (_) => 'Cannot be empty',
                        exceedingLength: (_) => 'Too long',
                        multiline: (_) => 'Has to be in a single line',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
            ),
          ),
        );
      },
    );
  }
}
