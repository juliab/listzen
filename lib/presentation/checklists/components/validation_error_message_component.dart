import 'package:flutter/material.dart';
import 'package:success_check/presentation/core/theming/style.dart';

class ValidationErrorMessage extends StatelessWidget {
  final String message;

  const ValidationErrorMessage({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, left: 6.0),
      child: Text(
        message,
        style: TextStyle(color: errorColor, fontSize: 13),
      ),
    );
  }
}
