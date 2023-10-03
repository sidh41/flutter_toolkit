// buttons.dart

import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

// Primary Button
class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isEnabled;
  final Color hoverColor;
  final Color pressedColor;

  const PrimaryButton({
    required this.text,
    required this.onPressed,
    this.isEnabled = true, // Default to enabled
    this.hoverColor = Colors.transparent,
    this.pressedColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: isEnabled
          ? SystemMouseCursors.click
          : SystemMouseCursors.forbidden, // Set cursor style
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isEnabled ? primaryColor : lightPrimaryColor,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            isEnabled ? whiteColor : whiteColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered) && isEnabled) {
              return darkPrimaryColor;
            }
            if (states.contains(MaterialState.pressed) && isEnabled) {
              return darkPrimaryColor;
            }
            if (states.contains(MaterialState.focused) && isEnabled) {
              return darkPrimaryColor;
            }
            return null;
          }),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: mdFontSize,
            fontWeight: normalFontWeight,
          ),
        ),
      ),
    );
  }
}

// Text Button
class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double fontSize;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize = mdFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: fontSize,
            fontFamily: 'Outfit',
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.transparent, // No background on hover
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.zero, // No padding
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
