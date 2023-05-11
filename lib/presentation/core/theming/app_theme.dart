import 'package:flutter/material.dart';
import 'package:success_check/presentation/core/theming/style.dart';

ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    error: errorColor,
  ),
  fontFamily: 'Montserrat',
  primaryTextTheme: TextTheme(
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: whiteColorWithOpacity,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: whiteColorWithOpacity,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: whiteColorWithOpacity,
    ),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      letterSpacing: -1,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      letterSpacing: -1,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.bold,
      letterSpacing: -1,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.bold,
      letterSpacing: -1,
      fontSize: 15,
    ),
  ),
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: AppBarTheme(
    color: appBarColor,
    foregroundColor: whiteColorWithOpacity,
    iconTheme: IconThemeData(
      size: 30,
      color: whiteColorWithOpacity,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: inputBorder(color: borderColor),
    focusedBorder: inputBorder(color: const Color(0xFF5E85FA), width: 2.5),
    errorBorder: inputBorder(color: errorColor),
    focusedErrorBorder: inputBorder(color: errorColor, width: 2.5),
    errorStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: standardBorderRadius,
    ),
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: standardBorderRadius,
      ),
      minimumSize: const Size.fromHeight(50),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: appBarColor,
    shape: RoundedRectangleBorder(
      borderRadius: cardBorderRadius,
    ),
    foregroundColor: whiteColorWithOpacity,
  ),
  checkboxTheme: CheckboxThemeData(
    side: BorderSide.none,
    fillColor: MaterialStateProperty.all(Colors.transparent),
    checkColor: MaterialStateProperty.all(Colors.green),
  ),
  dividerTheme: const DividerThemeData(
    color: borderColor,
    thickness: 1.2,
    indent: 0,
    endIndent: 0,
    space: 0,
  ),
);

const BorderSide borderSide = BorderSide(
  width: 1.5,
);

InputBorder inputBorder({
  required Color color,
  double width = 1.5,
}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      width: width,
      color: color,
    ),
    borderRadius: standardBorderRadius,
  );
}
