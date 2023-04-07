import 'package:flutter/material.dart';

Color backgroundColor = Colors.white;
Color mainColor = const Color(0xFF5E85FA);
Color blackColor = Colors.black;
Color darkColor = const Color(0xFF393939);
Color greyColor = const Color(0xFF9398A4);
Color borderColor = const Color(0xFFDBDBDB);
Color errorColor = Colors.red;

Gradient gradient = const LinearGradient(colors: [
  Color(0xFF5CB0FA),
  Color(0xFF6069FA),
  Color(0xFF8D81FB),
]);

BorderRadius borderRadius = BorderRadius.circular(12);
double dividerThickness = 1.2;

ThemeData appTheme = ThemeData(
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      letterSpacing: -1,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.bold,
      letterSpacing: -1,
    ),
  ),
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(color: Color(0xFF8D81FB)),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: inputBorder(color: borderColor),
    focusedBorder: inputBorder(color: mainColor, width: 2.5),
    errorBorder: inputBorder(color: errorColor),
    focusedErrorBorder: inputBorder(color: errorColor, width: 2.5),
  ),
  cardTheme: CardTheme(
    color: const Color(0xFFB3CDFF),
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      minimumSize: const Size.fromHeight(50),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: mainColor,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
  ),
);

BorderSide borderSide = const BorderSide(
  width: 1.5,
);

InputBorder inputBorder({required Color color, double width = 1.5}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      width: width,
      color: color,
    ),
    borderRadius: borderRadius,
  );
}

TextStyle buttonTextStyle = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

TextStyle stickyNoteTextStyle = const TextStyle(
  fontFamily: 'Architex',
  color: Colors.brown,
  fontSize: 50,
  fontWeight: FontWeight.bold,
);

Decoration cardTopDecoration = BoxDecoration(
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  ),
  color: backgroundColor,
);