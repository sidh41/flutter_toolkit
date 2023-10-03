// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import 'package:flutter_toolkit/design_System/inputs.dart';
import 'package:flutter_toolkit/design_System/responsive.dart';
import 'package:flutter_toolkit/design_System/buttons.dart';
import 'package:pinput/pinput.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPageLayout(),
    );
  }
}

class LoginPageLayout extends StatefulWidget {
  @override
  _LoginPageLayoutState createState() => _LoginPageLayoutState();
}

class _LoginPageLayoutState extends State<LoginPageLayout> {
  bool showLoginForm = true;

  void toggleForm() {
    setState(() {
      showLoginForm = !showLoginForm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context, viewportConstraints) {
      bootstrapGridParameters(gutterSize: 0);
      return SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          padding: EdgeInsets.all(0),
          children: [
            BootstrapRow(children: [
              BootstrapCol(
                invisibleForSizes: 'xs',
                sizes: 'col-12 col-sm-12 col-md-7 col-lg-8 col-xl-9',
                child: Container(
                  height: MediaQuery.of(context).size.height *
                      (Responsive.isScreenXS(context)
                              ? 0
                              : (Responsive.isScreenSM(context) ? 0.5 : 1.0))
                          .toDouble(),
                  child: ImageColumn(),
                ),
              ),
              BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-5 col-lg-4 col-xl-3',
                child: Container(
                  height: MediaQuery.of(context).size.height *
                      (Responsive.isScreenXS(context)
                              ? 1
                              : (Responsive.isScreenSM(context) ? 0.5 : 1.0))
                          .toDouble(),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: Center(
                    child: showLoginForm
                        ? LoginForm(toggleForm)
                        : OTPForm(toggleForm),
                  ),
                ),
              ),
            ])
          ],
        ),
      );
    });
  }
}

class ImageColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/Student-login.jpg',
      fit: BoxFit.cover,
    );
  }
}

class LoginForm extends StatelessWidget {
  final Function toggleForm;

  LoginForm(this.toggleForm);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Login',
              style: h1Style,
            ),
          ),
          const SizedBox(height: 8.0),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: mdFontSize,
                fontWeight: normalFontWeight,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          // Textfield
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: lightColor,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Container(
                  width: 40.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(color: lightColor, width: 1.0),
                    ),
                  ),
                  child: SizedBox(
                    height: textFormFieldHeight,
                    child: Align(
                      alignment: Alignment.center,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        initialValue: '+91',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkColor,
                          fontSize: smFontSize,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Code',
                          hintStyle: TextStyle(
                            fontWeight: normalFontWeight,
                            color: mediumColor,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: textFormFieldHeight,
                    child: Align(
                      alignment: Alignment.center,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          fontWeight: normalFontWeight,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(
                            fontWeight: normalFontWeight,
                            color: mediumColor,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 2.0,
                            horizontal: 8.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: lgVerticalSpacing),
          Container(
            height: buttonHeight,
            width: double.infinity,
            child: PrimaryButton(
              text: 'Log in',
              onPressed: () {
                toggleForm();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OTPForm extends StatefulWidget {
  final Function toggleForm;

  OTPForm(this.toggleForm);

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  bool isOTPValid = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomTextButton(
              text: '< Back',
              onPressed: () {
                widget.toggleForm(); // Switch back to LoginForm
              },
            ),
          ),
          SizedBox(
            height: mdVerticalSpacing,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Verification',
              style: h1Style,
            ),
          ),
          const SizedBox(height: 8.0),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Enter OTP Code',
              style: TextStyle(
                fontSize: mdFontSize,
                fontWeight: normalFontWeight,
              ),
            ),
          ),
          const SizedBox(height: lgVerticalSpacing),
          Pinput(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            length: 4,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: primaryColor),
              ),
            ),
            errorPinTheme: defaultPinTheme.copyBorderWith(
              border: Border.all(color: dangerColor),
            ),
            validator: (value) {
              // return value == '1155' ? null : 'Pin is incorrect';
              setState(() {
                //  <---------------
                isOTPValid = value == '1155';
              });
              return isOTPValid ? null : 'Pin is incorrect';
            },
            hapticFeedbackType: HapticFeedbackType.lightImpact,
            onCompleted: (pin) {
              debugPrint('onCompleted: $pin');
              // widget.toggleForm();
            },
            onChanged: (value) {
              debugPrint('onChanged: $value');
            },
            autofocus: true,
          ),
          const SizedBox(height: smVerticalSpacing),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Pin: 1155",
              style: TextStyle(
                  fontSize: xsFontSize, fontWeight: regularFontWeight),
            ),
          ),
          const SizedBox(height: xsVerticalSpacing),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Didn't receive the code?",
                style: TextStyle(fontSize: xsFontSize),
              ),
              SizedBox(width: xsHorizontalSpacing),
              CustomTextButton(
                text: 'Resend OTP',
                fontSize: xsFontSize,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: mdVerticalSpacing),
          Container(
            height: buttonHeight,
            width: double.infinity,
            child: AbsorbPointer(
              absorbing: !isOTPValid, //  <----------
              child: PrimaryButton(
                text: 'Verify',
                onPressed: () {
                  widget.toggleForm();
                },
                isEnabled: isOTPValid,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
