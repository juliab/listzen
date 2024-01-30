import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';

/* Form decoration */
const Decoration formDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(40),
    topRight: Radius.circular(40),
  ),
);

/* Sign in / Sign up button */
const Gradient buttonGradient = LinearGradient(colors: [
  Color(0xFF5CB0FA),
  Color(0xFF6069FA),
  Color(0xFF8D81FB),
]);

/* Mail icon styles (Password Reset Confirmation Page) */
BoxDecoration outerCircleDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(40),
  color: const Color(0xFFF9F5FE),
);
BoxDecoration innerCircleDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(40),
  color: const Color(0xFFF4EBFD),
);
const Color mailIconColor = Color(0xFF7E5CC4);
const double mailIconSize = 30;

/* Links */
TextStyle? authLinkTextStyle(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;

  return MediaQuery.of(context).devicePixelRatio > 2
      ? textTheme.labelMedium
      : textTheme.labelSmall;
}

double? backIconSize(BuildContext context) {
  return MediaQuery.of(context).devicePixelRatio > 2 ? 20 : 16;
}

/* Buttons */
ButtonStyle? authButtonStyle(BuildContext context) {
  final double buttonHeight =
      MediaQuery.of(context).devicePixelRatio > 2 ? 55 : 45;
  return Theme.of(context).outlinedButtonTheme.style?.copyWith(
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(double.infinity, buttonHeight),
        ),
      );
}

ButtonStyle? appleButtonStyle(BuildContext context) {
  return authButtonStyle(context)?.copyWith(
    backgroundColor: MaterialStateProperty.all<Color>(blackColor),
    foregroundColor: MaterialStateProperty.all<Color>(whiteColor),
  );
}

ButtonStyle? googleButtonStyle(BuildContext context) {
  return authButtonStyle(context)?.copyWith(
    side: const MaterialStatePropertyAll<BorderSide>(
      BorderSide(
        color: borderColor,
        width: 1.5,
      ),
    ),
  );
}

TextStyle? authButtonTextStyle(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  final textTheme = Theme.of(context).textTheme;

  if (mediaQuery.devicePixelRatio == 3) {
    return mediaQuery.size.height < 900
        ? textTheme.titleSmall
        : textTheme.titleMedium;
  }

  return textTheme.labelMedium;
}
