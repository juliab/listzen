import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:success_check/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Scaffold(
              body: Center(
                child: Text('Something went wrong'),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return const SignInPage();
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
