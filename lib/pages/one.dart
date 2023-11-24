// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/buttons.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import 'package:flutter_toolkit/design_System/inputs.dart';
import 'package:flutter_toolkit/pages/two.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One Page'),
      ),
      body: const OnePageLayout(),
    );
  }
}

class OnePageLayout extends StatefulWidget {
  const OnePageLayout({Key? key}) : super(key: key);

  @override
  State<OnePageLayout> createState() => _OnePageLayoutState();
}

class _OnePageLayoutState extends State<OnePageLayout> {
  final _mobileNumberController = TextEditingController();
  final _countryCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'First Name',
            style: h3Style,
          ),
          CustomTextFormField(
            controller: _countryCodeController,
            hintText: 'Enter First Name',
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 30),
          Text(
            'Age',
            style: h3Style,
          ),
          CustomTextFormField(
            controller: _mobileNumberController,
            hintText: 'Enter Age',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: buttonHeight,
            child: PrimaryButton(
              text: 'Submit',
              onPressed: () {
                String countryCode = _countryCodeController.text;
                String mobileNumber = _mobileNumberController.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TwoPage(
                      countryCode: countryCode,
                      mobileNumber: mobileNumber,
                    ),
                  ),
                ).then((_) {
                  _countryCodeController.clear();
                  _mobileNumberController.clear();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
