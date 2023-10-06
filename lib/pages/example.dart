import 'package:flutter/material.dart';
// import '../Design System/responsive.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import '../design_System/responsive.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive GridView Example'),
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
      bootstrapGridParameters(gutterSize: defaultGutterSize);
      return SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          children: [
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-6 col-sm-6 col-md-4 col-lg-3 col-xl-3',
                  child: const CustomColumn(),
                ),
                BootstrapCol(
                  sizes: 'col-6 col-sm-6 col-md-4 col-lg-3 col-xl-3',
                  child: const CustomColumn(),
                ),
                BootstrapCol(
                  sizes: 'col-6 col-sm-6 col-md-4 col-lg-3 col-xl-3',
                  child: const CustomColumn(),
                ),
                BootstrapCol(
                  sizes: 'col-6 col-sm-6 col-md-4 col-lg-3 col-xl-3',
                  child: const CustomColumn(),
                ),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Name',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        TextFormField(
                          style: const TextStyle(
                              color: darkColor,
                              fontSize: mdFontSize,
                              fontWeight: normalFontWeight),
                          decoration: textFormFieldDecoration.copyWith(
                              hintText: 'Enter your Name'),
                        ),
                        const SizedBox(height: mdVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Age',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        TextFormField(
                          style: const TextStyle(
                              color: darkColor,
                              fontSize: mdFontSize,
                              fontWeight: normalFontWeight),
                          decoration: textFormFieldDecoration.copyWith(
                              hintText: 'Enter your Age'),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      );
    });
  }
}

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // padding: EdgeInsets.all(16),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      height: 200,
      child: const Text(
        "Column 1",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
