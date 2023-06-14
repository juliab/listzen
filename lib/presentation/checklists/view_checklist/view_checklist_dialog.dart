import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/domain/checklists/item.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/checklists/components/checklist_info_tile_component.dart';
import 'package:success_check/presentation/checklists/components/checklist_statistics_component.dart';
import 'package:success_check/presentation/checklists/components/completion_status_checkbox_component.dart';
import 'package:success_check/presentation/checklists/components/item_tile_component.dart';
import 'package:success_check/presentation/core/theming/style.dart';

class ViewChecklistDialog extends StatelessWidget {
  final Checklist checklist;

  const ViewChecklistDialog({super.key, required this.checklist});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChecklistEditBloc>(
      create: (context) => getIt<ChecklistEditBloc>()
        ..add(ChecklistEditEvent.initialized(some(checklist))),
      child: BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
        builder: (context, state) {
          return Dialog(
            insetPadding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: cardBorderRadius,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CloseButton(),
                    ],
                  ),
                  ChecklistInfoTile.readOnly(
                    color: checklist.color,
                    name: checklist.name.getOrCrash(),
                    completionStatusCheckbox: CompletionStatusCheckbox(
                      isCompleted: () => state.checklist.isCompleted(),
                      onChanged: (value) =>
                          BlocProvider.of<ChecklistEditBloc>(context).add(
                        ChecklistEditEvent.completionStatusChanged(
                          isDone: value!,
                          instantSave: true,
                        ),
                      ),
                      insideCard: true,
                    ),
                    statistics: ChecklistStatistics(checklist: state.checklist),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.checklist.items.length,
                        itemBuilder: (context, index) {
                          final item = state.checklist.items[index];
                          return ViewItemTile(
                            item: item,
                            index: index,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: ItemTile.readOnly(
            name: item.name.getOrCrash(),
            completionStatusCheckbox: CompletionStatusCheckbox(
              isCompleted: () => item.done,
              onChanged: (value) =>
                  BlocProvider.of<ChecklistEditBloc>(context).add(
                ChecklistEditEvent.itemCompletionStatusChanged(
                    index: index, isDone: value!, instantSave: true),
              ),
              insideCard: false,
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
