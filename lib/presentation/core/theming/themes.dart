import 'package:flutter/material.dart';

Color backgroundColor = Colors.white;
Color mainColor = const Color(0xFF5E85FA);
Color blackColor = Colors.black;
Color darkColor = const Color(0xFF393939);
Color greyColor = const Color(0xFF9398A4);
Color borderColor = const Color(0xFFDBDBDB);
Color errorColor = const Color(0xFFFE4A49);
Color editActionButtonColor = Colors.green;
Color whiteColorWithOpacity = Colors.white.withOpacity(0.6);

BorderRadius cardBorderRadius = BorderRadius.circular(20);
double cardHeight = 70;

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
  hintText: 'Enter checklist name',
  hintStyle: const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  ),
);

double checkboxSize = 30;

BoxDecoration checkboxDecoration({required bool insideColoredCard}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: insideColoredCard ? whiteColorWithOpacity : greyColor,
      width: 2,
    ),
  );
}

Gradient buttonGradient = const LinearGradient(colors: [
  Color(0xFF5CB0FA),
  Color(0xFF6069FA),
  Color(0xFF8D81FB),
]);

Gradient cardGradient = const LinearGradient(colors: [
  Color(0xFF17805D),
  Color(0xFF02797A),
  Color(0xFF218F85),
  Color(0xFF32A293),
]);

BorderRadius borderRadius = BorderRadius.circular(12);

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
  appBarTheme: const AppBarTheme(
    color: Color(0xFFdb8e0e),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: inputBorder(color: borderColor),
    focusedBorder: inputBorder(color: mainColor, width: 2.5),
    errorBorder: inputBorder(color: errorColor),
    focusedErrorBorder: inputBorder(color: errorColor, width: 2.5),
  ),
  cardTheme: CardTheme(
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
    backgroundColor: const Color(0xFFdb8e0e),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    side: BorderSide.none,
    fillColor: MaterialStateProperty.all(Colors.transparent),
    checkColor: MaterialStateProperty.all(Colors.green),
  ),
  dividerTheme: DividerThemeData(
    color: borderColor,
    thickness: 1.2,
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

InputDecoration noBordersInputDecoration = const InputDecoration(
  counterText: '',
  border: InputBorder.none,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  focusedErrorBorder: InputBorder.none,
);

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
