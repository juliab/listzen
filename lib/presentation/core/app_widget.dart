import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/auth/auth_bloc.dart';
import 'package:success_check/injection.dart';

import 'package:success_check/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Checklists',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.green[800],
            secondary: Colors.green.shade800,
          ),
          appBarTheme: AppBarTheme(backgroundColor: Colors.green[800]),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.blue,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.green[800],
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Colors.green[800],
              secondary: Colors.green.shade800,
            ),
          ),
          // TODO figure out how to change button color
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
