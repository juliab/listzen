import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/auth/auth_bloc.dart';
import 'package:success_check/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:success_check/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/checklists/checklists_overview/widgets/checklists_overview_body_widget.dart';

import 'package:success_check/presentation/routes/router.gr.dart';

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
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    AutoRouter.of(context).push(const SignInPageRoute()),
                orElse: () {},
              );
            },
          ),
          BlocListener<ChecklistActorBloc, ChecklistActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.checklistFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support',
                      insufficientPermissions: (_) =>
                          'Insufficient permissions',
                      unableToAccess: (_) => 'Impossible error',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Checklists'),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                BlocProvider.of<AuthBloc>(context)
                    .add(const AuthEvent.signedOut());
              },
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.indeterminate_check_box))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO navigate to ChecklistFormPage
            },
            child: const Icon(Icons.add),
          ),
          body: const ChecklistsOverviewBody(),
        ),
      ),
    );
  }
}
