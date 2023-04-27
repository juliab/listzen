import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/checklists/components/checklist_info_tile.dart';
import 'package:success_check/presentation/checklists/components/checklist_statistics_widget.dart';
import 'package:success_check/presentation/checklists/components/completion_status_checkbox.dart';
import 'package:success_check/presentation/checklists/components/item_tile.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

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
          return AlertDialog(
            insetPadding: const EdgeInsets.all(10),
            titlePadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: cardBorderRadius,
            ),
            scrollable: true,
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CloseButton(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ChecklistInfoTile.readOnly(
                    name: checklist.name.getOrCrash(),
                    completionStatusCheckbox: CompletionStatusCheckbox(
                      isCompleted: () => state.checklist.isCompleted(),
                      onChanged: (value) =>
                          BlocProvider.of<ChecklistEditBloc>(context).add(
                              ChecklistEditEvent.completionStatusChanged(
                                  isDone: value!, instantSave: true)),
                      decoration: checkboxDecoration(insideColoredCard: true),
                      checkColor: whiteColorWithOpacity,
                    ),
                    statistics:
                        ChecklistStatisticsWidget(checklist: state.checklist),
                  ),
                ),
              ],
            ),
            content: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 50,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.checklist.items.length,
                itemBuilder: (context, index) {
                  final item = state.checklist.items[index];
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
                                    ChecklistEditEvent
                                        .itemCompletionStatusChanged(
                                            index: index,
                                            isDone: value!,
                                            instantSave: true)),
                            decoration:
                                checkboxDecoration(insideColoredCard: false),
                            checkColor: Colors.green,
                          ),
                        ),
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
