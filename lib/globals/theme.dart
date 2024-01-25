import 'package:flutter/material.dart';

class ThemeClass{

  static ThemeData lightMode = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(
        background: Colors.grey.shade300,
        primary: Colors.grey.shade500,
        secondary: Colors.grey.shade200,
        tertiary: Colors.white,
        inversePrimary: Colors.grey.shade900,
      ),
  );

  static ThemeData darkMode = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(
        primary: Colors.white,
        onPrimary: Colors.black,
        secondary: Colors.white,
        onSecondary: Colors.black,
        background: Colors.black,
        onBackground: Colors.white,
        surface: Colors.black,
        onSurface: Colors.white,
        error: Colors.white,
        onError: Colors.black,
        brightness: Brightness.dark,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      )
  );
}