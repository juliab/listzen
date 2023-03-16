import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:success_check/application/checklists/checklist_form/checklist_form_bloc.dart';

import 'package:success_check/presentation/checklists/checklist_form/misc/item_presentation_classes.dart';

class AddItemTile extends StatelessWidget {
  const AddItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChecklistFormBloc, ChecklistFormState>(
        listenWhen: (previous, current) =>
            previous.isEditing != current.isEditing,
        listener: (context, state) {
          Provider.of<FormItems>(context, listen: false).value = state
              .checklist.items
              .map((item) => ItemPrimitive.fromDomain(item))
              .toList();
        },
        builder: (context, state) {
          return ListTile(
            title: const Text('Add an item'),
            leading: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(Icons.add),
            ),
            onTap: () {
              Provider.of<FormItems>(context, listen: false)
                  .value
                  .add(ItemPrimitive.empty());
              BlocProvider.of<ChecklistFormBloc>(context).add(
                ChecklistFormEvent.itemsChanged(
                  Provider.of<FormItems>(context, listen: false).value,
                ),
              );
            },
          );
        });
  }
}
