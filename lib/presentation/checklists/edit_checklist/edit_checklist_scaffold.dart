import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/edit_checklist_info_tile_widget.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/items_list_widget.dart';
import 'package:listzen/presentation/core/manage_focus_cubit/manage_focus_cubit.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/keyboard_dismisser.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

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
        body: StandardPadding.all(
          factor: 0.7,
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
      onPressed: () => context.read<ChecklistEditBloc>().add(
            const ChecklistEditEvent.saved(),
          ),
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
        Icons.close,
        color: Color(0XFF696969),
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
        context.read<ManageFocusCubit>().addNodeAndRequestFocus();
        context.read<ChecklistEditBloc>().add(
              const ChecklistEditEvent.itemAdded(),
            );
      },
    );
  }
}
