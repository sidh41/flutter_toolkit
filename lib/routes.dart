// import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter_toolkit/pages/list.dart';
import 'package:flutter_toolkit/pages/responsive_grid.dart';

import 'pages/login.dart';
import 'pages/dashboard.dart';
import 'pages/example.dart';
import 'pages/tabs.dart';

class Routes {
  static final routes = {
    '/': (context) => ListPage(),
    '/login': (context) => LoginPage(),
    '/dashboard': (context) => DashboardPage(),
    '/example': (context) => ExamplePage(),
    '/responsive': (context) => ResponsiveGridPage(),
    '/tabs': (context) => TabsPage(),
    '/list': (context) => ListPage(),
  };
}
