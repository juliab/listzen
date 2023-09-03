import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/core/app_widget.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppWidget());
}
