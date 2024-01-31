import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:listzen/firebase_options.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/core/listzen_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ListZenApp());
}
