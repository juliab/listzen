import 'package:flutter/material.dart';

const Color backgroundColor = Colors.white;
Color cardForegroundColor = Colors.white.withOpacity(0.7);
Color buttonForegroundColor = Colors.white.withOpacity(0.9);
const Color blackColor = Colors.black;
const Color whiteColor = Colors.white;
const Color appBarColor = Color(0XFFdac69e);
const Color darkColor = Color(0xFF393939);
const Color greyColor = Color(0xFF9398A4);
const Color borderColor = Color(0xFFDBDBDB);
const Color focusedBorderColor = Color(0xFF5E85FA);
const Color errorColor = Color(0xFFe57373);
const Color redColor = Colors.red;
const Color greenColor = Color(0XFF2f8a57);

BorderRadius standardBorderRadius = BorderRadius.circular(12);

TextStyle mainTextStyle = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  letterSpacing: -0.5,
);

InputDecoration noBordersInputDecoration = const InputDecoration(
  counterText: '',
  border: InputBorder.none,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  focusedErrorBorder: InputBorder.none,
  contentPadding: EdgeInsets.zero,
);

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

/* Completion status checkbox */
BoxDecoration checkboxDecoration({required bool insideCard}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: insideCard ? cardForegroundColor : greyColor,
      width: 2,
    ),
  );
}
