import 'package:flutter/material.dart';

// Colors
const Color primaryColor = Color(0xFF0575E6);
const Color lightPrimaryColor = Color(0xFF66BDF7);
const Color darkPrimaryColor = Color(0xFF035AC5);

const Color darkColor = Color(0xFF333333);
const Color mediumColor = Color(0xFFABABAB);
const Color lightColor = Color(0xFFDADADA);
const Color whiteColor = Color(0xFFFFFFFF);
const Color dangerColor = Color(0xFFFF4949);

// Text
const TextStyle h1Style = TextStyle(
    fontSize: xlFontSize, fontWeight: boldFontWeight, color: darkColor);

const TextStyle h2Style = TextStyle(
    fontSize: lgFontSize, fontWeight: boldFontWeight, color: darkColor);

const TextStyle h3Style = TextStyle(
    fontSize: mdFontSize, fontWeight: boldFontWeight, color: darkColor);

const TextStyle h4Style = TextStyle(
    fontSize: smFontSize, fontWeight: boldFontWeight, color: darkColor);

const TextStyle h5Style = TextStyle(
    fontSize: xsFontSize, fontWeight: boldFontWeight, color: darkColor);

const TextStyle h6Style = TextStyle(
    fontSize: xxsFontSize, fontWeight: boldFontWeight, color: darkColor);

const TextStyle inputLabel = TextStyle(
    fontSize: mdFontSize, fontWeight: normalFontWeight, color: darkColor);

// Font Sizes
const xlFontSize = 26.0;
const lgFontSize = 20.0;
const mdFontSize = 18.0;
const smFontSize = 16.0;
const xsFontSize = 14.0;
const xxsFontSize = 12.0;

// Font weights
const boldFontWeight = FontWeight.w600;
const regularFontWeight = FontWeight.w500;
const normalFontWeight = FontWeight.w400;
const lightFontWeight = FontWeight.w300;
const lighterFontWeight = FontWeight.w200;

// Spacing
const double xsVerticalSpacing = 4.0;
const double smVerticalSpacing = 8.0;
const double mdVerticalSpacing = 16.0;
const double lgVerticalSpacing = 24.0;
const double xlVerticalSpacing = 32.0;

const double xsHorizontalSpacing = 4.0;
const double smHorizontalSpacing = 8.0;
const double mdHorizontalSpacing = 16.0;
const double lgHorizontalSpacing = 24.0;
const double xlHorizontalSpacing = 32.0;

const double defaultGutterSize = 16.0;

// Height
const double textFormFieldHeight = 48.0;
const double textFormFieldWidth = double.infinity;
const double buttonHeight = 48.0;

// TextFormField Style
const InputDecoration textFormFieldDecoration = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mediumColor),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: primaryColor),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  contentPadding: EdgeInsets.all(16.0),
  labelStyle: TextStyle(fontSize: mdFontSize, color: darkColor),
  floatingLabelStyle: TextStyle(fontSize: mdFontSize, color: darkColor),
  hintStyle: TextStyle(
    fontSize: mdFontSize,
    fontWeight: lightFontWeight,
    color: mediumColor,
  ),
);

// Container
// set width auto: width: double.infinity,
// set height to 100vh: height: MediaQuery.of(context).size.height,