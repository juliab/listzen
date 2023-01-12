import 'package:flutter/material.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/core/app_widget.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppWidget();
  }
}
