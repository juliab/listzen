import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/edit_checklist_info_tile_widget.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/items_list_widget.dart';
import 'package:listzen/presentation/core/manage_focus_cubit/manage_focus_cubit.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/keyboard_dismisser.dart';

class EditChecklistPageScaffold extends StatelessWidget {
  final bool autofocus;

  const EditChecklistPageScaffold({
    super.key,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: AppBar(
          leading: const CancelButton(),
          title: const ScreenTitle(),
          actions: const [
            SaveChecklistButton(),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              EditChecklistInfoTile(
                autofocus: autofocus,
              ),
              const Flexible(child: ItemsList()),
            ],
          ),
        ),
        floatingActionButton: const AddItemButton(),
      ),
    );
  }
}

class SaveChecklistButton extends StatelessWidget {
  const SaveChecklistButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.check,
        color: greenColor,
      ),
      onPressed: () => BlocProvider.of<ChecklistEditBloc>(context)
          .add(const ChecklistEditEvent.saved()),
    );
  }
}

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
      buildWhen: (previous, current) => previous.isEditing != current.isEditing,
      builder: (context, state) => Text(
        state.isEditing ? 'Edit checklist' : 'Create checklist',
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.cancel_outlined,
        color: greyColor,
      ),
      onPressed: () => AutoRouter.of(context).pop(),
    );
  }
}

class AddItemButton extends StatelessWidget {
  const AddItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        BlocProvider.of<ManageFocusCubit>(context).addNodeAndRequestFocus();
        BlocProvider.of<ChecklistEditBloc>(context).add(
          const ChecklistEditEvent.itemAdded(),
        );
      },
    );
  }
}
