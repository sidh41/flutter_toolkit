// import 'package:flutter/material.dart';
import 'package:flutter_toolkit/pages/bootstrap.dart';
import 'package:flutter_toolkit/pages/responsive_row.dart';

import 'pages/login.dart';
import 'pages/dashboard.dart';
import 'pages/test.dart';
import 'pages/example.dart';
// import 'screens/profile.dart';

class Routes {
  static final routes = {
    '/': (context) => LoginPage(),
    '/login': (context) => LoginPage(),
    '/dashboard': (context) => DashboardPage(),
    '/test': (context) => TestPage(),
    '/example': (context) => ExamplePage(),
    '/res': (context) => ResponsiveRowExample(),
    '/bootstrap': (context) => BootstrapPage(),
  };
}
