import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:success_check/application/checklists/checklist_form/checklist_form_bloc.dart';
import 'package:success_check/domain/checklists/value_objects.dart';
import 'package:success_check/presentation/checklists/edit_checklist/misc/build_context_x.dart';
import 'package:success_check/presentation/checklists/edit_checklist/misc/item_presentation_classes.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

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
            final itemsNumber = formItems.value.length;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: itemsNumber,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ItemTile(
                      index: index,
                      key: ValueKey(context.formItems[index].id),
                    ),
                    const Divider(),
                  ],
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
        return ListTile(
          leading: ItemCheckbox(index: index),
          title: TextFormField(
            controller: textEditingController,
            autofocus: context.formItems[index].name == '',
            decoration: noBordersInputDecoration,
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
          trailing: InkWell(
            onTap: () {
              context.formItems.removeAt(index);
              BlocProvider.of<ChecklistFormBloc>(context)
                  .add(ChecklistFormEvent.itemsChanged(context.formItems));
            },
            child: const Icon(Icons.remove_circle),
          ),
        );
      },
    );
  }
}

class ItemCheckbox extends StatelessWidget {
  const ItemCheckbox({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: checkboxDecoration,
      width: checkboxSize,
      height: checkboxSize,
      child: Transform.scale(
        scale: 1.5,
        child: Checkbox(
          onChanged: (value) {
            context.formItems[index] =
                context.formItems[index].copyWith(done: value!);
            BlocProvider.of<ChecklistFormBloc>(context)
                .add(ChecklistFormEvent.itemsChanged(context.formItems));
          },
          value: context.formItems[index].done,
        ),
      ),
    );
  }
}
