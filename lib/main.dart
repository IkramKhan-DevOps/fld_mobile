import 'package:fld/globals/routes.dart';
import 'package:flutter/material.dart';

import 'globals/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.loginScreen,
      routes: AppRoutes.routes,
      themeMode:ThemeMode.system,
      theme: ThemeClass.lightMode,
      darkTheme: ThemeClass.darkMode,
    );
  }
}