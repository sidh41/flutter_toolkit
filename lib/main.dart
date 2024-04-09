import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import 'package:flutter_toolkit/routes/app_route_config.dart';

// import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Toolkit',
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
        canvasColor: primaryColor,
        primaryColor: primaryColor,
        fontFamily: 'Outfit',
      ),
    );
  }
}
