import 'package:flutter/material.dart';

ThemeData mainTheme() {
  return ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffF35383),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          textStyle: TextStyle(fontWeight: FontWeight.bold)),
    ),
    scaffoldBackgroundColor: Color(0xff1C1F2E),
    textTheme: TextTheme(
      headline3: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: 'GB',
      ),
      headline4: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'GB'),
      button: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: ''),
      headline6: TextStyle(
        color: Colors.white,
        fontFamily: 'GM',
        fontSize: 20,
      ),
    ),
    colorScheme: ColorScheme.light(
        primary: Color(0xffC5C5C5), secondary: Color(0xffF35383)),
  );
}
