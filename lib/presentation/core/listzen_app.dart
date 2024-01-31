import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/application/checklists/checklist_migrate/checklist_migrate_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/core/theming/app_theme.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class ListZenApp extends StatelessWidget {
  ListZenApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _authBlocProvider(),
        _checklistMigrateBlocProvider(),
      ],
      child: _authBlocListener(
        child: MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          title: 'ListZen',
          theme: appTheme,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }

  BlocProvider<AuthBloc> _authBlocProvider() {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
    );
  }

  BlocProvider<ChecklistMigrateBloc> _checklistMigrateBlocProvider() {
    return BlocProvider<ChecklistMigrateBloc>(
      create: (context) => getIt<ChecklistMigrateBloc>(),
    );
  }

  BlocListener<AuthBloc, AuthState> _authBlocListener({
    required Widget child,
  }) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous == const AuthState.unauthenticated() && previous != current,
      listener: (context, state) => context.read<ChecklistMigrateBloc>().add(
            const ChecklistMigrateEvent.start(),
          ),
      child: child,
    );
  }
}
