import 'package:flutter/material.dart';

ThemeData mainTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xff1C1F2E),
    textTheme: TextTheme(
      headline3: TextStyle(color: Colors.white, fontSize: 20),
      headline4: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Color(0xffF35383),
    ),
  );
}
