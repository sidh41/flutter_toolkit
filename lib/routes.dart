// import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/dashboard.dart';
import 'pages/example.dart';
// import 'screens/profile.dart';

class Routes {
  static final routes = {
    '/': (context) => LoginPage(),
    '/login': (context) => LoginPage(),
    '/dashboard': (context) => DashboardPage(),
    '/test': (context) => ExamplePage(),
  };
}
