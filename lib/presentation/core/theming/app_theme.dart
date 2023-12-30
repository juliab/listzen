import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';

ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    error: errorColor,
  ),
  fontFamily: 'Montserrat',
  primaryTextTheme: TextTheme(
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: whiteColorWithOpacity,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: whiteColorWithOpacity,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: whiteColorWithOpacity,
    ),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16,
      letterSpacing: -0.3,
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
      fontSize: 14,
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
      fontSize: 14,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.bold,
      letterSpacing: -1,
      fontSize: 12,
    ),
  ),
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    color: appBarColor,
    foregroundColor: darkColor,
    iconTheme: IconThemeData(
      size: 30,
      color: darkColor,
    ),
    shadowColor: greyColor,
    elevation: 0,
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: inputBorder(color: borderColor),
    focusedBorder: inputBorder(color: focusedBorderColor, width: 2),
    errorBorder: inputBorder(color: errorColor),
    focusedErrorBorder: inputBorder(color: errorColor, width: 2),
    errorStyle: const TextStyle(
      fontWeight: FontWeight.normal,
      letterSpacing: -1,
    ),
    errorMaxLines: 3,
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
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
      side: BorderSide.none,
      minimumSize: const Size.fromHeight(40),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: appBarColor,
    shape: RoundedRectangleBorder(
      borderRadius: cardBorderRadius,
    ),
    foregroundColor: darkColor,
    extendedTextStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    side: BorderSide.none,
    fillColor: MaterialStateProperty.all(Colors.transparent),
    checkColor: MaterialStateProperty.all(Colors.green),
  ),
  dividerTheme: const DividerThemeData(
    color: Color(0XFFc2c8d6),
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
