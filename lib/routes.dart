// import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter_toolkit/pages/countries.dart';
import 'package:flutter_toolkit/pages/list.dart';
import 'package:flutter_toolkit/pages/location.dart';
import 'package:flutter_toolkit/pages/login1.dart';
import 'package:flutter_toolkit/pages/navigation/nav.dart';
import 'package:flutter_toolkit/pages/one.dart';
import 'package:flutter_toolkit/pages/responsive_grid.dart';
import 'package:flutter_toolkit/pages/two.dart';

import 'pages/login.dart';
import 'pages/dashboard.dart';
import 'pages/example.dart';
import 'pages/tabs.dart';
import 'pages/card.dart';

class Routes {
  static final routes = {
    '/': (context) => DashboardPage(),
    '/login': (context) => LoginPage(),
    '/dashboard': (context) => DashboardPage(),
    '/example': (context) => ExamplePage(),
    '/responsive': (context) => ResponsiveGridPage(),
    '/tabs': (context) => TabsPage(),
    '/list': (context) => ListPage(),
    '/card': (context) => CardPage(),
    '/login1': (context) => Login1Page(),
    // '/location': (context) => LocationPage(),
    '/one': (context) => OnePage(),
    '/two': (context) => TwoPage(
          countryCode: '',
          mobileNumber: '',
        ),
    '/navigation': (context) => Nav(),
    '/countries': (context) => CountriesPage(),
  };
}
