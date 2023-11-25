import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/checklists_overview_body_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/my_account_drawer.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class ChecklistsOverviewPage extends StatelessWidget {
  const ChecklistsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChecklistActorBloc>(
          create: (context) => getIt<ChecklistActorBloc>(),
        ),
        BlocProvider<ChecklistEditBloc>(
          create: (context) => getIt<ChecklistEditBloc>(),
        ),
        BlocProvider<ChecklistWatcherBloc>(
          create: (BuildContext context) => getIt<ChecklistWatcherBloc>()
            ..add(const ChecklistWatcherEvent.watchAllStarted()),
        ),
      ],
      child: BlocListener<ChecklistActorBloc, ChecklistActorState>(
        listener: _listenToDeleteResult,
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
          databaseError: (_) => 'Could not delete checklist from database',
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
      endDrawer: const MyAccountDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Checklists'),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
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
