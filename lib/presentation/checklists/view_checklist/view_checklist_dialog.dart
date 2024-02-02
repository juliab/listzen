import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/presentation/checklists/components/checklist_info_tile.dart';
import 'package:listzen/presentation/checklists/components/checklist_statistics.dart';
import 'package:listzen/presentation/checklists/components/completion_status_checkbox.dart';
import 'package:listzen/presentation/checklists/components/item_tile.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class ViewChecklistDialog extends StatelessWidget {
  final Checklist checklist;

  const ViewChecklistDialog({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
        buildWhen: (previous, current) =>
            previous.checklist.id != current.checklist.id,
        builder: (context, state) {
          // Show progress indicator while bloc is being initialized
          if (state.checklist.id != checklist.id) {
            return const Center(child: CircularProgressIndicator());
          }
          return Dialog(
            insetPadding: StandardPadding.edgeInsetsAll(context: context),
            shape: RoundedRectangleBorder(
              borderRadius: cardBorderRadius,
            ),
            child: StandardPadding.horizontal(
              factor: 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _closeDialogRow(),
                  _buildChecklistCard(context),
                  _buildItemsList(context),
                ],
              ),
            ),
          );
        });
  }

  Widget _closeDialogRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CloseButton(),
      ],
    );
  }

  void _updateChecklistCompletionStatus(BuildContext context, bool isDone) {
    context.read<ChecklistEditBloc>().add(
          ChecklistEditEvent.completionStatusChanged(
            isDone: isDone,
            instantSave: true,
          ),
        );
  }

  Widget _buildChecklistCard(BuildContext context) {
    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => _updateChecklistCompletionStatus(
            context,
            !state.checklist.isCompleted,
          ),
          child: ChecklistInfoTile.readOnly(
            color: checklist.color,
            name: checklist.name.getOrCrash(),
            completionStatusCheckbox: CompletionStatusCheckbox(
              isCompleted: state.checklist.isCompleted,
              insideCard: true,
            ),
            statistics: ChecklistStatistics(
              checklist: state.checklist,
            ),
          ),
        );
      },
    );
  }

  Widget _buildItemsList(BuildContext context) {
    return Flexible(
      child: StandardPadding.symmetric(
        verticalFactor: 0.6,
        horizontalFactor: 1.2,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: checklist.items.length,
          itemBuilder: (context, index) {
            final item = checklist.items[index];
            return Column(
              children: [
                ViewItemTile(
                  item: item,
                  index: index,
                ),
                if (index < checklist.items.length - 1) ...[
                  const Divider(),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class ViewItemTile extends StatelessWidget {
  final Item item;
  final int index;

  const ViewItemTile({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => _updateItemCompletionStatus(context),
      child: Column(
        children: [
          StandardPadding.vertical(
            factor: 0.8,
            child: ItemTile.readOnly(
              name: item.name.getOrCrash(),
              completionStatusCheckbox: _buildCompletionCheckbox(),
            ),
          ),
        ],
      ),
    );
  }

  void _updateItemCompletionStatus(BuildContext context) {
    context.read<ChecklistEditBloc>().add(
          ChecklistEditEvent.itemCompletionStatusChanged(
            index: index,
            isDone: !context
                .read<ChecklistEditBloc>()
                .state
                .checklist
                .items[index]
                .done,
            instantSave: true,
          ),
        );
  }

  Widget _buildCompletionCheckbox() {
    return BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
      // Rebuild when item completion status is changed
      buildWhen: (previous, current) =>
          previous.checklist.items[index].done !=
          current.checklist.items[index].done,
      builder: (context, state) {
        return CompletionStatusCheckbox(
          isCompleted: state.checklist.items[index].done,
          insideCard: false,
        );
      },
    );
  }
}
