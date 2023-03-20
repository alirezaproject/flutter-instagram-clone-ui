import 'package:flutter/material.dart';

ThemeData mainTheme() {
  return ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffF35383),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          textStyle: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: 'GB', fontSize: 16)),
    ),
    scaffoldBackgroundColor: Color(0xff1C1F2E),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: Colors.white, fontFamily: 'SM'),
      displaySmall: TextStyle(
        color: Colors.white,
        fontFamily: 'GB',
        fontSize: 12,
      ),
      displayMedium: TextStyle(
        color: Colors.white,
        fontFamily: 'GB',
        fontSize: 14,
      ),
      headlineMedium: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'GB'),
      headlineSmall: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: 'GB',
      ),
      headlineLarge: TextStyle(
        color: Colors.white,
        fontFamily: 'GM',
        fontSize: 20,
      ),
    ),
    colorScheme: ColorScheme.light(
        primary: Color(0xffC5C5C5), secondary: Color(0xffF35383)),
  );
}
