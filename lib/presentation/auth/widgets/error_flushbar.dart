import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';

Flushbar flushbar(String message) {
  return Flushbar(
    messageText: Center(
      child: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    ),
    duration: const Duration(seconds: 1),
    padding: const EdgeInsets.only(
      top: 10,
      bottom: 40,
    ),
  );
}
