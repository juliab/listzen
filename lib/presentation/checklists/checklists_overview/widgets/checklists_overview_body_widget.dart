import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:listzen/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/checklist_card_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/critical_failure_display_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/error_checklist_card_widget.dart';

class ChecklistsOverviewBody extends StatelessWidget {
  const ChecklistsOverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistWatcherBloc, ChecklistWatcherState>(
        builder: (context, state) {
      return state.map(initial: (_) {
        return const SliverFillRemaining();
      }, loadInProgress: (_) {
        return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()));
      }, loadSuccess: (state) {
        final itemCount = state.checklists.length;
        if (itemCount == 0) {
          return const NoChecklistsText();
        }
        return SlidableAutoCloseBehavior(
          child: SliverFixedExtentList(
            itemExtent: 80,
            delegate: SliverChildBuilderDelegate((context, index) {
              final checklist = state.checklists[index];
              if (checklist.failureOption.isSome()) {
                return ErrorChecklistCard(checklist: checklist);
              } else {
                return ChecklistCard(checklist: checklist);
              }
            }, childCount: itemCount),
          ),
        );
      }, loadFailure: (state) {
        return SliverFillRemaining(
          child: CriticalFailureDisplay(failure: state.failure),
        );
      });
    });
  }
}

class NoChecklistsText extends StatelessWidget {
  const NoChecklistsText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      sliver: SliverFillRemaining(
        child: Center(
          child: Text(
            'No checklists yet.\nStart creating your first checklist '
            'to stay on track!',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
