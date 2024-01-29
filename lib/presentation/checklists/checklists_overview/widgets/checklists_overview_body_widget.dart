import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:listzen/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/checklist_card_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/critical_failure_display_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/error_checklist_card_widget.dart';
import 'package:listzen/presentation/checklists/theming/style.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class ChecklistsOverviewBody extends StatelessWidget {
  const ChecklistsOverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistWatcherBloc, ChecklistWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SliverFillRemaining(),
          loadInProgress: (_) => _buildProgressIndicator(),
          loadFailure: (state) => _buildFailureView(state.failure),
          loadSuccess: (state) => _buildChecklists(context, state.checklists),
        );
      },
    );
  }

  Widget _buildProgressIndicator() {
    return const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildFailureView(ChecklistFailure failure) {
    return SliverFillRemaining(
      child: CriticalFailureDisplay(failure: failure),
    );
  }

  Widget _buildChecklists(BuildContext context, List<Checklist> checklists) {
    final itemCount = checklists.length;
    if (itemCount == 0) {
      return const NoChecklistsText();
    }
    return SlidableAutoCloseBehavior(
      child: SliverFixedExtentList(
        itemExtent: checklistCardHeight(context),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final checklist = checklists[index];
            return checklist.failureOption.isSome()
                ? ErrorChecklistCard(checklist: checklist)
                : ChecklistCard(checklist: checklist);
          },
          childCount: itemCount,
        ),
      ),
    );
  }
}

class NoChecklistsText extends StatelessWidget {
  const NoChecklistsText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: StandardPadding.edgeInsetsSymmetric(
          horizontalFactor: 1, context: context),
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
