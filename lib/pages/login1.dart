// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

import '../Design_System/buttons.dart';
import '../Design_System/constants.dart';
import '../design_System/inputs.dart';

class Login1Page extends StatelessWidget {
  const Login1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login1PageLayout(),
    );
  }
}

class Login1PageLayout extends StatefulWidget {
  const Login1PageLayout({Key? key}) : super(key: key);

  @override
  _Login1PageLayoutState createState() => _Login1PageLayoutState();
}

class _Login1PageLayoutState extends State<Login1PageLayout> {
  bool _showOnePageLayout = true;
  String _countryCode = '';
  String _mobileNumber = '';

  void _toggleLayout(String countryCode, String mobileNumber) {
    setState(() {
      _showOnePageLayout = !_showOnePageLayout;
      _countryCode = countryCode;
      _mobileNumber = mobileNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context, viewportConstraints) {
      bootstrapGridParameters(gutterSize: 0);
      return SingleChildScrollView(
        child: BootstrapContainer(
          children: [
            BootstrapCol(sizes: 'col-12', child: ImageColumn()),
            BootstrapCol(
              sizes: 'col-12',
              child: _showOnePageLayout
                  ? OnePageLayout(toggleLayout: _toggleLayout)
                  : TwoPageLayout(
                      countryCode: _countryCode,
                      mobileNumber: _mobileNumber,
                      toggleLayout: _toggleLayout,
                    ),
            ),
          ],
        ),
      );
    });
  }
}

class ImageColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.pexels.com/photos/4144923/pexels-photo-4144923.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      fit: BoxFit.cover,
    );
  }
}

class OnePageLayout extends StatefulWidget {
  final Function toggleLayout;

  const OnePageLayout({Key? key, required this.toggleLayout}) : super(key: key);

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
        children: [
          CustomTextFormField(
            controller: _countryCodeController,
            hintText: 'Country Code',
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            controller: _mobileNumberController,
            hintText: 'Enter Mobile Number',
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
                  widget.toggleLayout(countryCode, mobileNumber);
                },
              ))
        ],
      ),
    );
  }
}

class TwoPageLayout extends StatefulWidget {
  final String countryCode;
  final String mobileNumber;
  final Function toggleLayout;

  const TwoPageLayout({
    Key? key,
    required this.countryCode,
    required this.mobileNumber,
    required this.toggleLayout,
  }) : super(key: key);

  @override
  State<TwoPageLayout> createState() => _TwoPageLayoutState();
}

class _TwoPageLayoutState extends State<TwoPageLayout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextButton(
            text: 'Back',
            onPressed: () {
              widget.toggleLayout('', '');
            },
          ),
          Text('Country Code: ${widget.countryCode}'),
          const SizedBox(height: 16),
          Text('Mobile Number: ${widget.mobileNumber}'),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
