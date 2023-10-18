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
                alignment:
                    Alignment.center, // Center the icon within the container
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
                alignment:
                    Alignment.center, // Center the icon within the container
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
            return darkPrimaryColor.withOpacity(0.25);
          }
          if (states.contains(MaterialState.focused) && isEnabled) {
            return darkPrimaryColor.withOpacity(0.15);
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
                alignment:
                    Alignment.center, // Center the icon within the container
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
                alignment:
                    Alignment.center, // Center the icon within the container
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
  final bool isEnabled; // Add an isEnabled parameter

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

    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: effectiveOnPressed,
      child: icon,
      elevation: 2.0,
      highlightElevation: 4.0,
      mouseCursor: mouseCursor, // Assign mouseCursor based on isEnabled
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
