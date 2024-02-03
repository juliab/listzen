import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class ValidationErrorMessage extends StatelessWidget {
  final String message;

  const ValidationErrorMessage({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: StandardPadding.edgeInsetsOnly(
        context: context,
        topFactor: 0.5,
        leftFactor: 0.6,
      ),
      child: Text(
        message,
        style: const TextStyle(
          color: errorColor,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
