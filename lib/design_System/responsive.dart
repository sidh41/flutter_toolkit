import 'package:flutter/material.dart';

class Responsive {
  static const screenXS = 576;
  static const screenSM = 768;
  static const screenMD = 992;
  static const screenLG = 1200;
  static const screenXL = 1440;

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static bool isScreenXS(BuildContext context) {
    return screenWidth(context) < screenXS;
  }

  static bool isScreenSM(BuildContext context) {
    return screenWidth(context) >= screenXS && screenWidth(context) < screenSM;
  }

  static bool isScreenMD(BuildContext context) {
    return screenWidth(context) >= screenSM && screenWidth(context) < screenMD;
  }

  static bool isScreenLG(BuildContext context) {
    return screenWidth(context) >= screenMD && screenWidth(context) < screenXL;
  }

  static bool isScreenXL(BuildContext context) {
    return screenWidth(context) >= screenXL;
  }

  static double gutterSize(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 576) {
      return 16.0; // Extra small screen
    } else if (screenWidth < 768) {
      return 16.0; // Small screen
    } else if (screenWidth < 992) {
      return 16.0; // Medium screen
    } else if (screenWidth < 1200) {
      return 16.0; // Large screen
    } else {
      return 16.0; // Extra large screen
    }
  }
}
