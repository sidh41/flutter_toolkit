// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../Design_System/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final double? width;
  final String? hintText;
  final TextAlign textAlign;
  final ValueChanged<String>? onChanged;
  final String? initialValue;
  final FocusNode? focusNode;

  const CustomTextFormField({
    Key? key,
    this.width,
    this.hintText,
    this.textAlign = TextAlign.center,
    this.onChanged,
    this.initialValue,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      focusNode: focusNode,
      child: TextFormField(
        textAlign: textAlign,
        onChanged: onChanged,
        style: TextStyle(
          fontWeight: normalFontWeight,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontWeight: normalFontWeight,
            color: mediumColor,
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: (textFormFieldHeight - 16.0) / 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: darkColor, // Border color
              width: 1.0, // Border width
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: primaryColor, // Border color when focused
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
  width: textFormFieldHeight,
  height: textFormFieldHeight,
  textStyle: const TextStyle(
    fontSize: mdFontSize,
    color: darkColor,
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    border: Border.all(color: mediumColor),
  ),
);
