import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdTechMinds',
      theme: ThemeData(
        primaryColor: darkColor,
        // Set the default font family to Outfit
        fontFamily: 'Outfit',
      ),
      initialRoute: '/',
      routes: Routes.routes,
    );
  }
}
