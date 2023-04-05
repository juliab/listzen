import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:success_check/application/checklists/checklist_form/checklist_form_bloc.dart';
import 'package:success_check/domain/checklists/value_objects.dart';

class NameField extends HookWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<ChecklistFormBloc, ChecklistFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.checklist.name.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Checklist',
            counterText: '',
          ),
          maxLength: CheckListName.maxString,
          onChanged: (value) => BlocProvider.of<ChecklistFormBloc>(context)
              .add(ChecklistFormEvent.nameChanged(value)),
          validator: (_) => BlocProvider.of<ChecklistFormBloc>(context)
              .state
              .checklist
              .name
              .value
              .fold(
                (f) => f.maybeMap(
                  empty: (f) => 'Cannot be empty',
                  exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                  orElse: () => null,
                ),
                (r) => null,
              ),
        ),
      ),
    );
  }
}
