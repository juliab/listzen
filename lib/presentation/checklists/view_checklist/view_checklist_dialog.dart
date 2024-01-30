import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/checklists/components/checklist_info_tile.dart';
import 'package:listzen/presentation/checklists/components/checklist_statistics.dart';
import 'package:listzen/presentation/checklists/components/completion_status_checkbox.dart';
import 'package:listzen/presentation/checklists/components/item_tile.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class ViewChecklistDialog extends StatelessWidget {
  final Checklist checklist;

  const ViewChecklistDialog({super.key, required this.checklist});

  @override
  Widget build(BuildContext context) {
    return _editBlocProvider(
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
                  GestureDetector(
                    onTap: () => context.read<ChecklistEditBloc>().add(
                          ChecklistEditEvent.completionStatusChanged(
                            isDone: !state.checklist.isCompleted(),
                            instantSave: true,
                          ),
                        ),
                    child: ChecklistInfoTile.readOnly(
                      color: checklist.color,
                      name: checklist.name.getOrCrash(),
                      completionStatusCheckbox: CompletionStatusCheckbox(
                        isCompleted: () => state.checklist.isCompleted(),
                        insideCard: true,
                      ),
                      statistics:
                          ChecklistStatistics(checklist: state.checklist),
                    ),
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

  BlocProvider<ChecklistEditBloc> _editBlocProvider({
    required Widget child,
  }) {
    return BlocProvider<ChecklistEditBloc>(
      create: (context) => getIt<ChecklistEditBloc>()
        ..add(ChecklistEditEvent.initialized(some(checklist))),
      child: child,
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
      onTap: () => context.read<ChecklistEditBloc>().add(
            ChecklistEditEvent.itemCompletionStatusChanged(
                index: index, isDone: !item.done, instantSave: true),
          ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: ItemTile.readOnly(
              name: item.name.getOrCrash(),
              completionStatusCheckbox: CompletionStatusCheckbox(
                isCompleted: () => item.done,
                insideCard: false,
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
