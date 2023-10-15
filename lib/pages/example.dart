// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import '../Design System/responsive.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import '../design_System/inputs.dart';
import '../design_System/responsive.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examples'),
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
      bootstrapGridParameters(gutterSize: 16.0);
      return SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          children: [
            BootstrapRow(
              children: [
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Custom TextFormField',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        CustomTextFormField(
                          hintText: 'Placeholder',
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Custom TextFormField + Icon',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        CustomTextFormField(
                          hintText: 'Placeholder',
                          prefixIcon: Icon(Icons.person, color: mediumColor),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Custom TextFormField + Icons',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        CustomTextFormField(
                          hintText: 'Placeholder',
                          prefixIcon: Icon(Icons.person, color: mediumColor),
                          suffixIcon: Icon(Icons.add, color: mediumColor),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Custom TextFormField + Icons + focused',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        CustomTextFormField(
                          hintText: 'Placeholder',
                          prefixIcon: Icon(Icons.person),
                          suffixIcon: Icon(Icons.add),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Custom TextFormField + Password',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        CustomTextFormField(
                          hintText: 'Password',
                          obscureText: true,
                          showToggleIcon: false,
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Custom TextFormField + Password View',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        CustomTextFormField(
                          hintText: 'Password',
                          obscureText: true,
                          showToggleIcon: true,
                          suffixIconSize: mdFontSize,
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'TextFormField Custom Decoration',
                          style: inputLabel,
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                        TextFormField(
                          style: const TextStyle(
                              color: darkColor,
                              fontSize: mdFontSize,
                              fontWeight: normalFontWeight),
                          decoration: textFormFieldDecoration.copyWith(
                              hintText: 'Placeholder',
                              prefixIcon: Icon(
                                Icons.supervised_user_circle,
                                color: mediumColor,
                              ),
                              suffixIcon: Icon(Icons.pending_actions)),
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
