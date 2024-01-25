import 'package:flutter/material.dart';

class ThemeClass{

  static ThemeData lightMode = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(
        background: Colors.white,
        primary: Colors.grey.shade500,
        secondary: Colors.grey.shade200,
        tertiary: Colors.white,
        inversePrimary: Colors.grey.shade900,
      ),
  );

  static ThemeData darkMode = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(
        background: Colors.grey.shade900,
        primary: Colors.grey.shade600,
        secondary: const Color.fromARGB(255, 57, 57, 57), // Color(0xFF393939
        tertiary: Colors.grey.shade800,
        inversePrimary: Colors.grey.shade300,
      ),
  );
}