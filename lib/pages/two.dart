// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

class TwoPage extends StatefulWidget {
  final String countryCode;
  final String mobileNumber;

  const TwoPage({
    Key? key,
    required this.countryCode,
    required this.mobileNumber,
  }) : super(key: key);

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two Page'),
      ),
      body: TwoPageLayout(
        countryCode: widget.countryCode,
        mobileNumber: widget.mobileNumber,
      ),
    );
  }
}

class TwoPageLayout extends StatefulWidget {
  final String countryCode;
  final String mobileNumber;

  const TwoPageLayout({
    Key? key,
    required this.countryCode,
    required this.mobileNumber,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'First Name: ',
                  style: h2Style.copyWith(fontFamily: 'Outfit'),
                ),
                TextSpan(
                  text: ' ${widget.countryCode}',
                  style: h2Style.copyWith(
                      fontFamily: 'Outfit', fontWeight: normalFontWeight),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Age: ',
                  style: h2Style.copyWith(fontFamily: 'Outfit'),
                ),
                TextSpan(
                  text: '${widget.mobileNumber}',
                  style: h2Style.copyWith(
                      fontFamily: 'Outfit', fontWeight: normalFontWeight),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
