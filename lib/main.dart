import 'package:fld/features/auth/login.dart';
import 'package:fld/features/dashboard/dashboard_screen.dart';
import 'package:fld/globals/routes.dart';
import 'package:flutter/material.dart';

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
    );
  }
}