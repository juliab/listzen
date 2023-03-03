import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';

class ChecklistsOverviewBody extends StatelessWidget {
  const ChecklistsOverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistWatcherBloc, ChecklistWatcherState>(
        builder: (context, state) {
      return state.map(
        initial: (_) {
          return Container();
        },
        loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
        loadSuccess: (state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final checklist = state.checklists[index];
              if (checklist.failureOption.isSome()) {
                return Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                );
              } else {
                return Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                );
              }
            },
            itemCount: state.checklists.length,
          );
        },
        loadFailure: (state) => Container(
          color: Colors.yellow,
          width: 200,
          height: 200,
        ),
      );
    });
  }
}
