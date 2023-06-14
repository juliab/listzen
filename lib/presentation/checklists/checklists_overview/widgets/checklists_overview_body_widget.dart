import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:success_check/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:success_check/presentation/checklists/checklists_overview/widgets/checklist_card_widget.dart';
import 'package:success_check/presentation/checklists/checklists_overview/widgets/critical_failure_display_widget.dart';
import 'package:success_check/presentation/checklists/checklists_overview/widgets/error_checklist_card_widget.dart';

class ChecklistsOverviewBody extends StatelessWidget {
  const ChecklistsOverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistWatcherBloc, ChecklistWatcherState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
        loadSuccess: (state) => SlidableAutoCloseBehavior(
          child: ListView.builder(
            itemCount: state.checklists.length,
            itemBuilder: (context, index) {
              final checklist = state.checklists[index];
              if (checklist.failureOption.isSome()) {
                return ErrorChecklistCard(checklist: checklist);
              } else {
                return ChecklistCard(checklist: checklist);
              }
            },
          ),
        ),
        loadFailure: (state) => CriticalFailureDisplay(failure: state.failure),
      );
    });
  }
}
