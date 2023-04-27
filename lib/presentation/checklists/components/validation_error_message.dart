import 'package:flutter/material.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

class ValidationErrorMessage extends StatelessWidget {
  final String message;

  const ValidationErrorMessage({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
      child: Text(
        message,
        style: TextStyle(color: errorColor),
      ),
    );
  }
}
