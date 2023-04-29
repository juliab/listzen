import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/core/app_widget.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppWidget());
}
