import 'dart:io';

import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/app_theme.dart';

const Color backgroundColor = Colors.white;
final Color whiteColorWithOpacity = Colors.white.withOpacity(0.8);
const Color blackColor = Colors.black;
const Color whiteColor = Colors.white;
const Color appBarColor = Color(0xFFf9e5b8);
const Color darkColor = Color(0xFF393939);
const Color greyColor = Color(0xFF9398A4);
const Color borderColor = Color(0xFFDBDBDB);
const Color focusedBorderColor = Color(0xFF5E85FA);
const Color errorColor = Color(0xFFFE4A49);
const Color greenColor = Colors.green;

BorderRadius standardBorderRadius = BorderRadius.circular(12);

TextStyle mainTextStyle = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

double signInFormHeight = Platform.isIOS ? 750 : 680;
double signUpFormHeight = Platform.isIOS ? 800 : 730;

InputDecoration noBordersInputDecoration = const InputDecoration(
  counterText: '',
  border: InputBorder.none,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  focusedErrorBorder: InputBorder.none,
);

InputDecoration switchBordersInputDecoration(bool hasError) {
  return InputDecoration(
    enabledBorder: hasError
        ? inputBorder(color: errorColor)
        : inputBorder(color: greyColor),
    focusedBorder: hasError
        ? inputBorder(color: errorColor)
        : inputBorder(color: focusedBorderColor, width: 2),
    counterText: '',
  );
}

const floatingButtonSize = 55.0;

/* SnackBar */
const EdgeInsetsGeometry snackbarPadding = EdgeInsets.only(top: 20);

/* Card */
BorderRadius cardBorderRadius = BorderRadius.circular(20);
const double cardHeight = 70;
InputBorder cardInputBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: cardBorderRadius,
);
InputDecoration cardInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.zero,
  enabledBorder: cardInputBorder,
  focusedBorder: cardInputBorder,
  errorBorder: cardInputBorder,
  focusedErrorBorder: cardInputBorder,
  counterText: '',
  hintStyle: const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  ),
);
const Gradient cardGradient = LinearGradient(colors: [
  Color(0xFF17805D),
  Color(0xFF02797A),
  Color(0xFF218F85),
  Color(0xFF32A293),
]);

/* Completion status checkbox */
BoxDecoration checkboxDecoration({required bool insideCard}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: insideCard ? whiteColorWithOpacity : greyColor,
      width: 2,
    ),
  );
}

/* Auth Card */
Decoration cardTopDecoration = const BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  ),
  color: backgroundColor,
);
