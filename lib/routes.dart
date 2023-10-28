// import 'package:flutter/material.dart';
import 'package:flutter_toolkit/pages/responsive_grid.dart';

import 'pages/login.dart';
import 'pages/dashboard.dart';
import 'pages/example.dart';
import 'pages/tabs.dart';

class Routes {
  static final routes = {
    '/': (context) => TabsPage(),
    '/login': (context) => LoginPage(),
    '/dashboard': (context) => DashboardPage(),
    '/example': (context) => ExamplePage(),
    '/responsive': (context) => ResponsiveGridPage(),
    '/tabs': (context) => TabsPage(),
  };
}
