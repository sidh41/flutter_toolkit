import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Profile'),
        // ),
        body: Center(
          child: Text('Hello',
              style: TextStyle(
                fontSize: xlFontSize,
              )),
        ),
      ),
    );
  }
}
