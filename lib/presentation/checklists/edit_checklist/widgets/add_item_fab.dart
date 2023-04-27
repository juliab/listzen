import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/checklists/checklist_edit/checklist_edit_bloc.dart';

class AddItemFloatingActionButton extends StatelessWidget {
  const AddItemFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
        builder: (context, state) {
      return FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          FocusManager.instance.primaryFocus?.unfocus();
          BlocProvider.of<ChecklistEditBloc>(context).add(
            const ChecklistEditEvent.itemAdded(),
          );
        },
      );
    });
  }
}
