import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/application/checklists/checklist_migrate/checklist_migrate_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/core/theming/app_theme.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider<ChecklistMigrateBloc>(
          create: (context) => getIt<ChecklistMigrateBloc>(),
        ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) {
          return previous == const AuthState.unauthenticated() &&
              previous != current;
        },
        listener: (context, state) {
          BlocProvider.of<ChecklistMigrateBloc>(context)
              .add(const ChecklistMigrateEvent.start());
        },
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
}
