import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/checklists_overview_body_widget.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class ChecklistsOverviewPage extends StatelessWidget {
  const ChecklistsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChecklistWatcherBloc>(
          create: (context) => getIt<ChecklistWatcherBloc>()
            ..add(const ChecklistWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<ChecklistActorBloc>(
          create: (context) => getIt<ChecklistActorBloc>(),
        ),
        BlocProvider<ChecklistEditBloc>(
          create: (context) => getIt<ChecklistEditBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeMap(
              unauthenticated: (_) =>
                  AutoRouter.of(context).push(const SignInRoute()),
              orElse: () => null,
            ),
          ),
          BlocListener<ChecklistActorBloc, ChecklistActorState>(
            listener: _listenToDeleteResult,
          ),
        ],
        child: const ChecklistsOverviewScaffold(),
      ),
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
        ),
        context: context,
      ).show(),
      orElse: () {},
    );
  }
}

class ChecklistsOverviewScaffold extends StatelessWidget {
  const ChecklistsOverviewScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Checklists'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => BlocProvider.of<AuthBloc>(context)
                .add(const AuthEvent.signedOut()),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => AutoRouter.of(context).push(
          EditChecklistRoute(editedChecklistOption: none()),
        ),
        icon: const Icon(Icons.add),
        label: const Text('Add checklist'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: ChecklistsOverviewBody(),
        ),
      ),
    );
  }
}
