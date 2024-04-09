// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_toolkit/pages/error.dart';
import 'package:flutter_toolkit/pages/test.dart';
import 'package:flutter_toolkit/routes/app_route_constants.dart';
import 'package:go_router/go_router.dart';
import '../pages/card.dart';
import '../pages/countries.dart';
import '../pages/dashboard.dart';
import '../pages/example.dart';
import '../pages/list.dart';
import '../pages/location.dart';
import '../pages/login.dart';
import '../pages/login1.dart';
import '../pages/navigation/nav.dart';
import '../pages/responsive_grid.dart';
import '../pages/tabs.dart';

final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: AppRouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) => MaterialPage(child: DashboardPage()),
      ),
      GoRoute(
        name: AppRouteConstants.loginRouteName,
        path: '/login',
        pageBuilder: (context, state) => MaterialPage(child: LoginPage()),
      ),
      GoRoute(
        name: AppRouteConstants.exampleRouteName,
        path: '/example',
        pageBuilder: (context, state) => MaterialPage(child: ExamplePage()),
      ),
      GoRoute(
        name: AppRouteConstants.responsiveRouteName,
        path: '/responsive',
        pageBuilder: (context, state) =>
            MaterialPage(child: ResponsiveGridPage()),
      ),
      GoRoute(
        name: AppRouteConstants.tabsRouteName,
        path: '/tabs',
        pageBuilder: (context, state) => MaterialPage(child: TabsPage()),
      ),
      GoRoute(
        name: AppRouteConstants.listRouteName,
        path: '/list',
        pageBuilder: (context, state) => MaterialPage(child: ListPage()),
      ),
      GoRoute(
        name: AppRouteConstants.cardRouteName,
        path: '/card',
        pageBuilder: (context, state) => MaterialPage(child: CardPage()),
      ),
      GoRoute(
        name: AppRouteConstants.login1RouteName,
        path: '/login1',
        pageBuilder: (context, state) => MaterialPage(child: Login1Page()),
      ),
      GoRoute(
        name: AppRouteConstants.locationRouteName,
        path: '/location',
        pageBuilder: (context, state) => MaterialPage(child: LocationPage()),
      ),
      // GoRoute(
      //   path: '/one',
      //   builder: (context, state) => OnePage(),
      // ),
      // GoRoute(
      //   path: '/two',
      //   builder: (context, state) => TwoPage(
      //     countryCode: state.queryParams['countryCode'] ?? '',
      //     mobileNumber: state.queryParams['mobileNumber'] ?? '',
      //   ),
      // ),
      GoRoute(
        name: AppRouteConstants.navigationRouteName,
        path: '/navigation',
        pageBuilder: (context, state) => MaterialPage(child: Nav()),
      ),
      GoRoute(
        name: AppRouteConstants.countriesRouteName,
        path: '/countries',
        pageBuilder: (context, state) => MaterialPage(child: CountriesPage()),
      ),
      GoRoute(
        name: AppRouteConstants.testRouteName,
        path: '/test',
        pageBuilder: (context, state) => MaterialPage(child: TestPage()),
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(child: ErrorPage());
    });
