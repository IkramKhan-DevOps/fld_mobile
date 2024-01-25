import 'package:flutter/material.dart';

import '../features/auth/login.dart';
import '../features/dashboard/dashboard_screen.dart';
import '../features/recommendations/recommendations_screen.dart';
import '../features/scan/scan_process_screen.dart';
import '../features/scan/scan_start_screen.dart';
import '../features/settings/password_change_screen.dart';
import '../features/settings/profile_screen.dart';

class AppRoutes {

  static const String loginScreen = '/login_screen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String scanStartScreen = '/scan_start_screen';
  static const String scanProcessScreen = '/scan_process_screen';
  static const String recommendationsScreen = '/recommendations_screen';
  static const String profileScreen = '/profile_screen';
  static const String passwordChangeScreen = '/password_change_screen';


  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    scanStartScreen: (context) => ScanStartScreen(),
    scanProcessScreen: (context) => ScanProcessScreen(),
    recommendationsScreen: (context) => RecommendationsScreen(),
    profileScreen: (context) => ProfileScreen(),
    passwordChangeScreen: (context) => PasswordChangeScreen(),
  };
}