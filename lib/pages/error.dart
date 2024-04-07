// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import 'package:flutter_toolkit/routes/app_route_constants.dart';
// import 'package:flutter_toolkit/routes/app_route_constants.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error Page"),
      ),
      body: SingleChildScrollView(
        child: ErrorPageLayout(),
      ),
    );
  }
}

class ErrorPageLayout extends StatelessWidget {
  const ErrorPageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context, viewportConstraints) {
      bootstrapGridParameters(gutterSize: 8.0);
      return SingleChildScrollView(
        child: BootstrapContainer(
            fluid: true,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            children: [
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-12 col-lg-12',
                    child: ColumnWidget(
                      text: 'We are here in Error Page',
                    )),
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-12 col-lg-12',
                  child: ElevatedButton(
                      onPressed: () {
                        context.goNamed(AppRouteConstants.homeRouteName);
                      },
                      child: Text('Back to home!')),
                ),
              ]),
            ]),
      );
    });
  }
}

class ColumnWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;

  const ColumnWidget(
      {Key? key,
      required this.text,
      this.bgColor = lightColor,
      this.textColor = darkColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: double.infinity,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: mdFontSize,
              fontWeight: normalFontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
