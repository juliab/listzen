import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/auth/auth_bloc.dart';
import 'package:success_check/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:success_check/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/checklists/checklists_overview/widgets/checklists_overview_body_widget.dart';
import 'package:success_check/presentation/checklists/checklists_overview/widgets/uncompleted_switch.dart';
import 'package:success_check/presentation/routes/app_router.dart';

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
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    AutoRouter.of(context).push(const SignInRoute()),
                orElse: () {},
              );
            },
          ),
          BlocListener<ChecklistActorBloc, ChecklistActorState>(
            listener: (context, state) {
              // TODO test delete errors
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          appBar: AppBar(
            title: const Text('Your checklists'),
            leading: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                BlocProvider.of<AuthBloc>(context)
                    .add(const AuthEvent.signedOut());
              },
            ),
            actions: const [
              UncompletedSwitch(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              AutoRouter.of(context).push(
                EditChecklistRoute(editedChecklistOption: none()),
              );
            },
            icon: const Icon(Icons.add),
            label: const Text('Add checklist'),
          ),
          body: const Padding(
            padding: EdgeInsets.all(12.0),
            child: ChecklistsOverviewBody(),
          ),
        ),
      ),
    );
  }
}
