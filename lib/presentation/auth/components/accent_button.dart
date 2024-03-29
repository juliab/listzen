import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class AccentButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AccentButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: buttonGradient,
        borderRadius: standardBorderRadius,
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: authButtonStyle(context),
        child: Text(
          text,
          style: authButtonTextStyle(context)?.copyWith(
            color: buttonForegroundColor,
          ),
        ),
      ),
    );
  }
}
