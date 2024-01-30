import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/checklists/checklists_overview/checklists_overview_scaffold.dart';
import 'package:listzen/presentation/core/widgets/error_flushbar.dart';

@RoutePage()
class ChecklistsOverviewPage extends StatelessWidget {
  const ChecklistsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _watcherBlocProvider(),
        _actorBlocProvider(),
        _editBlocProvider(),
      ],
      child: _authBlocBuilder(
        child: _actorBlocListener(
          child: const ChecklistsOverviewScaffold(),
        ),
      ),
    );
  }

  BlocProvider<ChecklistActorBloc> _actorBlocProvider() {
    return BlocProvider<ChecklistActorBloc>(
      create: (context) => getIt<ChecklistActorBloc>(),
    );
  }

  BlocProvider<ChecklistEditBloc> _editBlocProvider() {
    return BlocProvider<ChecklistEditBloc>(
      create: (context) => getIt<ChecklistEditBloc>(),
    );
  }

  BlocProvider<ChecklistWatcherBloc> _watcherBlocProvider() {
    return BlocProvider<ChecklistWatcherBloc>(
      create: (BuildContext context) => getIt<ChecklistWatcherBloc>()
        ..add(const ChecklistWatcherEvent.watchAllStarted()),
    );
  }

  BlocBuilder<AuthBloc, AuthState> _authBlocBuilder({
    required Widget child,
  }) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          signOutInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          orElse: () => child,
        );
      },
    );
  }

  BlocListener<ChecklistActorBloc, ChecklistActorState> _actorBlocListener({
    required Widget child,
  }) {
    return BlocListener<ChecklistActorBloc, ChecklistActorState>(
      listener: _listenToDeleteResult,
      child: child,
    );
  }

  void _listenToDeleteResult(BuildContext context, ChecklistActorState state) {
    state.maybeMap(
      deleteFailure: (state) => ErrorFlushbar(
        title: 'Could not delete checklist.',
        message: state.checklistFailure.map(
          unexpected: (_) =>
              'Unexpected error occured while deleting, please contact support.',
          insufficientPermissions: (_) => 'Insufficient permissions.',
          unableToAccess: (_) => 'Impossible error.',
          databaseError: (_) => 'Could not delete checklist from database',
        ),
        context: context,
      ).show(),
      orElse: () {},
    );
  }
}
