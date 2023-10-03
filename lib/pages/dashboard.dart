import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Center(
        child: Text(
          'This is the Dashboard page.',
          style: TextStyle(fontWeight: boldFontWeight, fontSize: xlFontSize),
        ),
      ),
    );
  }
}
