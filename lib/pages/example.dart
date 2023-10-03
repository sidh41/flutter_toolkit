// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../design_System/constants.dart';
import '../design_System/responsive.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fixed Grid Example'),
      ),
      body: const ExamplePageLayout(),
    );
  }
}

class ExamplePageLayout extends StatelessWidget {
  const ExamplePageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context, viewportConstraints) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(mdVerticalSpacing),
              child: Text(
                'Hi, this is ROW',
                style: TextStyle(fontSize: lgFontSize, color: whiteColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: Responsive.isScreenXL(context)
                    ? 3
                    : Responsive.isScreenLG(context)
                        ? 3
                        : Responsive.isScreenMD(context)
                            ? 3
                            : 1,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text('1st Item'),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Column(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text('2nd Item'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        color: Colors.red,
                        child: Center(
                          child: Text('3rd Item'),
                        ),
                      ),
                      Row(
                        children: [
                          Radio(value: true, groupValue: null, onChanged: null),
                          Text('Radio Button'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'Hi, again this is ROW',
              style: TextStyle(fontSize: lgFontSize, color: whiteColor),
            ),
          ],
        ),
      );
    });
  }
}
