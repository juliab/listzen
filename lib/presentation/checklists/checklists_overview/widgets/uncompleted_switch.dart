import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:success_check/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';

class UncompletedSwitch extends HookWidget {
  const UncompletedSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          BlocProvider.of<ChecklistWatcherBloc>(context).add(toggleState.value
              ? const ChecklistWatcherEvent.watchUncompletedStarted()
              : const ChecklistWatcherEvent.watchAllStarted());
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          transitionBuilder: (child, animation) =>
              ScaleTransition(scale: animation, child: child),
          child: toggleState.value
              ? const Icon(
                  Icons.check_box_outline_blank,
                  key: Key('outline'),
                )
              : const Icon(
                  Icons.indeterminate_check_box,
                  key: Key('indeterminate'),
                ),
        ),
      ),
    );
  }
}
