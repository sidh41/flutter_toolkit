import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

class BootstrapPage extends StatelessWidget {
  const BootstrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: BootstrapPageLayout(),
    );
  }
}

class BootstrapPageLayout extends StatelessWidget {
  const BootstrapPageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context, viewportConstraints) {
      bootstrapGridParameters(gutterSize: gutterSize);
      return SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          padding: EdgeInsets.all(0),
          children: [
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-6 col-md-6',
                  child: Container(
                      color: primaryColor,
                      child: const Text(
                        '1st Column',
                        style: TextStyle(color: whiteColor),
                      )),
                ),
                BootstrapCol(
                  sizes: 'col-6 col-md-6',
                  child: Container(
                      color: primaryColor,
                      child: const Text(
                        '2nd Column',
                        style: TextStyle(color: whiteColor),
                      )),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
