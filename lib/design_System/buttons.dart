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
  final Widget? icon; // Property for optional icon
  final IconPosition iconPosition; // Property for icon position
  final double iconSpacing; // Property for icon spacing

  const PrimaryButton({
    this.text = '',
    required this.onPressed,
    this.isEnabled = true, // Default to enabled
    this.hoverColor = Colors.transparent,
    this.pressedColor = Colors.transparent,
    this.icon, // Initialize icon property
    this.iconPosition = IconPosition.left, // Default icon position to left
    this.iconSpacing = smHorizontalSpacing, // Default icon spacing to 8.0
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: MouseRegion(
        cursor: isEnabled
            ? SystemMouseCursors.click
            : SystemMouseCursors.forbidden, // Set cursor style
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPosition == IconPosition.left && icon != null)
              Container(
                alignment: Alignment.center,
                child: icon,
              ),
            if (icon != null)
              SizedBox(width: iconSpacing), // Apply left icon spacing
            if (text.isNotEmpty)
              Text(
                text,
                style: const TextStyle(
                  fontSize: mdFontSize,
                  fontWeight: normalFontWeight,
                ),
              ),
            if (iconPosition == IconPosition.right && icon != null)
              SizedBox(width: iconSpacing), // Apply right icon spacing
            if (iconPosition == IconPosition.right && icon != null)
              Container(
                alignment: Alignment.center,
                child: icon,
              ),
          ],
        ),
      ),
    );
  }
}

// Secondary Button
class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isEnabled;
  final Color hoverColor;
  final Color pressedColor;
  final Widget? icon; // Property for optional icon
  final IconPosition iconPosition; // Property for icon position
  final double iconSpacing; // Property for icon spacing

  const SecondaryButton({
    required this.text,
    required this.onPressed,
    this.isEnabled = true, // Default to enabled
    this.hoverColor = Colors.transparent,
    this.pressedColor = Colors.transparent,
    this.icon, // Initialize icon property
    this.iconPosition = IconPosition.left, // Default icon position to left
    this.iconSpacing = smHorizontalSpacing, // Default icon spacing to 8.0
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isEnabled
          ? onPressed
          : null, // Disable onPressed if isEnabled is false
      style: ButtonStyle(
        side: MaterialStateProperty.resolveWith<BorderSide>((states) {
          if (isEnabled) {
            return const BorderSide(color: primaryColor, width: 2.0);
          } else {
            return const BorderSide(color: lightPrimaryColor, width: 2.0);
          }
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered) && isEnabled) {
            return whiteColor; // Set text color to whiteColor on hover
          }
          if (states.contains(MaterialState.pressed) && isEnabled) {
            return whiteColor; // Set text color to whiteColor on press
          }
          if (states.contains(MaterialState.focused) && isEnabled) {
            return whiteColor; // Set text color to whiteColor on focus
          }
          if (states.contains(MaterialState.selected) && isEnabled) {
            return whiteColor; // Set text color to whiteColor on selection
          }
          return isEnabled ? primaryColor : lightPrimaryColor;
        }),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered) && isEnabled) {
            return primaryColor;
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
      child: MouseRegion(
        cursor: isEnabled
            ? SystemMouseCursors.click
            : SystemMouseCursors
                .forbidden, // Set cursor style based on isEnabled
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPosition == IconPosition.left && icon != null)
              Container(
                alignment: Alignment.center,
                child: icon,
              ),
            if (icon != null)
              SizedBox(width: iconSpacing), // Apply left icon spacing
            if (text.isNotEmpty)
              Text(
                text,
                style: const TextStyle(
                  fontSize: mdFontSize,
                  fontWeight: normalFontWeight,
                ),
              ),
            if (iconPosition == IconPosition.right && icon != null)
              SizedBox(width: iconSpacing), // Apply right icon spacing
            if (iconPosition == IconPosition.right && icon != null)
              Container(
                alignment: Alignment.center,
                child: icon,
              ),
          ],
        ),
      ),
    );
  }
}

enum IconPosition {
  left,
  right,
}

// Primary FloatingActionButton
class PrimaryFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final Color iconColor;
  final bool isEnabled;

  const PrimaryFloatingActionButton({
    required this.onPressed,
    required this.icon,
    this.iconColor = whiteColor,
    this.isEnabled = true, // Default isEnabled to false
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isEnabled
        ? primaryColor
        : lightPrimaryColor; // Set backgroundColor based on isEnabled
    VoidCallback? effectiveOnPressed =
        isEnabled ? onPressed : null; // Set onPressed based on isEnabled
    MouseCursor mouseCursor = isEnabled
        ? SystemMouseCursors.click
        : SystemMouseCursors.forbidden; // Set mouseCursor based on isEnabled
    Color iconColor = isEnabled ? whiteColor : whiteColor;

    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: effectiveOnPressed,
      elevation: 2.0,
      highlightElevation: 4.0,
      mouseCursor: mouseCursor, // Assign mouseCursor based on isEnabled
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: IconTheme(
        data: IconThemeData(color: iconColor), // Set the icon color
        child: icon,
      ),
    );
  }
}

// Secondary FloatingActionButton
class SecondaryFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final bool isEnabled;

  const SecondaryFloatingActionButton({
    required this.onPressed,
    required this.icon,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isEnabled ? whiteColor : whiteColor;
    VoidCallback? effectiveOnPressed = isEnabled ? onPressed : null;
    MouseCursor mouseCursor =
        isEnabled ? SystemMouseCursors.click : SystemMouseCursors.forbidden;

    Color buttonBorderColor = isEnabled ? primaryColor : lightPrimaryColor;

    Color iconColor = isEnabled ? primaryColor : lightPrimaryColor;

    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: effectiveOnPressed,
      child: IconTheme(
        data: IconThemeData(color: iconColor), // Set the icon color
        child: icon,
      ),
      elevation: 2.0,
      highlightElevation: 4.0,
      mouseCursor: mouseCursor,
      splashColor: primaryColor,
      focusElevation: 4.0,
      hoverElevation: 4.0,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      disabledElevation: 0,
      focusNode: FocusNode(canRequestFocus: false),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28.0),
        side: BorderSide(
          width: 2.0,
          color: buttonBorderColor,
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double fontSize;
  final bool isEnabled;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontSize = mdFontSize,
    this.isEnabled = true, // Default to enabled
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontSize: fontSize,
            fontFamily: 'Outfit',
          ),
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return lightPrimaryColor; // Color when disabled
            }
            return primaryColor; // Color when enabled
          },
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(8.0), // Add default padding
        ),
        mouseCursor: MaterialStateProperty.all<MouseCursor>(
          isEnabled ? SystemMouseCursors.click : SystemMouseCursors.forbidden,
        ),
      ),
      onPressed:
          isEnabled ? onPressed : null, // Disable onPressed when not enabled
      child: Text(text),
    );
  }
}
