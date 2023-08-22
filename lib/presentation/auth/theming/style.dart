import 'package:flutter/material.dart';

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