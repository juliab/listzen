import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:success_check/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/checklists/components/checklist_info_tile.dart';
import 'package:success_check/presentation/checklists/components/checklist_statistics_widget.dart';
import 'package:success_check/presentation/checklists/components/completed_checkbox.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

class ViewChecklistDialog extends StatelessWidget {
  final Checklist checklist;

  const ViewChecklistDialog({super.key, required this.checklist});

  @override
  Widget build(BuildContext context) {
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
              completedCheckbox: CompletedCheckbox(
                isCompleted: () => checklist.isCompleted(),
                onChanged: (_) {},
                decoration: checkboxDecoration(insideColoredCard: true),
                checkColor: whiteColorWithOpacity,
              ),
              statistics: ChecklistStatisticsWidget(checklist: checklist),
            ),
          ),
        ],
      ),
      content: BlocProvider<ChecklistEditBloc>(
        create: (context) => getIt<ChecklistEditBloc>()
          ..add(ChecklistEditEvent.initialized(some(checklist))),
        child: BlocBuilder<ChecklistEditBloc, ChecklistEditState>(
          builder: (context, state) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width - 50,
              child: ListView.builder(
                shrinkWrap: true,
                //itemCount: itemsNumber,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // ItemTile(
                      //   index: index,
                      //   key: ValueKey(context.formItems[index].id),
                      // ),
                      const Divider(),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
