// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member

import 'package:flutter/material.dart';
// import '../Design System/responsive.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_toolkit/design_System/buttons.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import 'package:flutter_toolkit/routes/app_route_constants.dart';
import 'package:go_router/go_router.dart';
import '../design_System/inputs.dart';
import '../design_System/responsive.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: darkColor,
        surfaceTintColor: primaryColor,
        title: const Text('Examples'),
      ),
      body: ExamplePageLayout(),
    );
  }
}

class ExamplePageLayout extends StatefulWidget {
  ExamplePageLayout({super.key});

  @override
  State<ExamplePageLayout> createState() => _ExamplePageLayoutState();
}

bool _obscureText = true;

class _ExamplePageLayoutState extends State<ExamplePageLayout> {
  final _focusNodeForm = FocusNode();
  final _focusNodeCustomPassword = FocusNode();

  @override
  void dispose() {
    _focusNodeForm.dispose();
    _focusNodeCustomPassword.dispose();
    super.dispose();
  }

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
                  child: Row(
                    children: [
                      Text(
                        'h1 Heading',
                        style: h1Style,
                      ),
                      const SizedBox(height: lgVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                  child: Row(
                    children: [
                      Text(
                        'h2 Heading',
                        style: h2Style,
                      ),
                      const SizedBox(height: lgVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                  child: Row(
                    children: [
                      Text(
                        'h3 Heading',
                        style: h3Style,
                      ),
                      const SizedBox(height: lgVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                  child: Row(
                    children: [
                      Text(
                        'h4 Heading',
                        style: h4Style,
                      ),
                      const SizedBox(height: lgVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                  child: Row(
                    children: [
                      Text(
                        'h5 Heading',
                        style: h5Style,
                      ),
                      const SizedBox(height: lgVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                  child: Row(
                    children: [
                      Text(
                        'h6 Heading',
                        style: h6Style,
                      ),
                      const SizedBox(height: lgVerticalSpacing),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    const SizedBox(height: lgVerticalSpacing),
                  ],
                ),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'CustomTextFormField',
                          style: h2Style,
                        ),
                      ),
                      const SizedBox(height: xsVerticalSpacing),
                    ],
                  ),
                ),
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
                          hintText: 'Placeholder 123',
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
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'TextField with textFormFieldDecoration',
                          style: h2Style,
                        ),
                      ),
                      const SizedBox(height: xsVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: textFormFieldDecoration.copyWith(
                              labelText: 'Additional Field'),
                          focusNode: _focusNodeForm,
                        ),
                        const SizedBox(height: mdVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: textFormFieldDecoration.copyWith(
                            labelText: 'Password',
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: lightPrimaryColor,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              color: lightPrimaryColor,
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                          focusNode: _focusNodeCustomPassword,
                          keyboardType: TextInputType
                              .visiblePassword, // Set keyboard type
                          obscureText:
                              _obscureText, // Use obscureText for password masking
                        ),
                        const SizedBox(height: mdVerticalSpacing),
                      ],
                    )),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            const SizedBox(height: lgVerticalSpacing),
                            Text(
                              'Buttons (Enabled)',
                              style: h2Style,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: smVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: PrimaryButton(
                                text: 'Primary', onPressed: () {})),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: SecondaryButton(
                                text: 'Secondary', onPressed: () {})),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: PrimaryButton(
                              text: 'Edit',
                              onPressed: () {},
                              icon: Icon(Icons.edit),
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: SecondaryButton(
                              text: 'Delete',
                              onPressed: () {},
                              icon: Icon(Icons.delete),
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: PrimaryButton(
                              text: 'Edit',
                              onPressed: () {},
                              icon: Icon(Icons.edit),
                              iconPosition: IconPosition.right,
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: SecondaryButton(
                              text: 'Delete',
                              onPressed: () {},
                              icon: Icon(Icons.delete),
                              iconPosition: IconPosition.right,
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Buttons (Disabled)',
                              style: h2Style,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: smVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: PrimaryButton(
                              text: 'Primary',
                              onPressed: () {},
                              isEnabled: false,
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: SecondaryButton(
                              text: 'Secondary',
                              onPressed: () {},
                              isEnabled: false,
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: PrimaryButton(
                              text: 'Edit',
                              onPressed: () {},
                              icon: Icon(Icons.edit),
                              isEnabled: false,
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: SecondaryButton(
                              text: 'Delete',
                              onPressed: () {},
                              icon: Icon(Icons.delete),
                              isEnabled: false,
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: PrimaryButton(
                              text: 'Edit',
                              onPressed: () {},
                              icon: Icon(Icons.edit),
                              iconPosition: IconPosition.right,
                              isEnabled: false,
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: Column(
                      children: [
                        Container(
                            height: buttonHeight,
                            width: double.infinity,
                            child: SecondaryButton(
                              text: 'Delete',
                              onPressed: () {},
                              icon: Icon(Icons.delete),
                              iconPosition: IconPosition.right,
                              isEnabled: false,
                            )),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Primary Floating Action Button (Enabled)',
                              style: h2Style,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: smVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: buttonHeight,
                          height: buttonHeight,
                          child: FittedBox(
                            child: PrimaryFloatingActionButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: FittedBox(
                            child: PrimaryFloatingActionButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 75.0,
                          child: FittedBox(
                            child: PrimaryFloatingActionButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Primary Floating Action Button (Disabled)',
                              style: h2Style,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: smVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: buttonHeight,
                          height: buttonHeight,
                          child: FittedBox(
                            child: PrimaryFloatingActionButton(
                              isEnabled: false,
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: FittedBox(
                            child: PrimaryFloatingActionButton(
                              isEnabled: false,
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 75.0,
                          child: FittedBox(
                            child: PrimaryFloatingActionButton(
                              isEnabled: false,
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Secondary Floating Action Button (Enabled)',
                              style: h2Style,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: smVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: buttonHeight,
                          height: buttonHeight,
                          child: FittedBox(
                            child: SecondaryFloatingActionButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: FittedBox(
                            child: SecondaryFloatingActionButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 75.0,
                          child: FittedBox(
                            child: SecondaryFloatingActionButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Secondary Floating Action Button (Disabled)',
                              style: h2Style,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: smVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: buttonHeight,
                          height: buttonHeight,
                          child: FittedBox(
                            child: SecondaryFloatingActionButton(
                              isEnabled: false,
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: FittedBox(
                            child: SecondaryFloatingActionButton(
                              isEnabled: false,
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 75.0,
                          child: FittedBox(
                            child: SecondaryFloatingActionButton(
                              isEnabled: false,
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: xlFontSize,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
              ],
            ),
            BootstrapRow(
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Text Buttons',
                              style: h2Style,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: smVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        CustomTextButton(
                          text: 'Enabled',
                          onPressed: () {},
                        ),
                        const SizedBox(height: lgVerticalSpacing),
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-4 col-sm-6 col-md-4 col-lg-4 col-xl-3',
                    child: Column(
                      children: [
                        CustomTextButton(
                          text: 'Disabled',
                          isEnabled: false,
                          onPressed: () {},
                        ),
                        const SizedBox(height: lgVerticalSpacing),
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
