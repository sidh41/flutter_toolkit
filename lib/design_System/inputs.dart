// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../Design_System/constants.dart';

class CustomTextFormField extends StatefulWidget {
  final double? width;
  final String? hintText;
  final TextAlign textAlign;
  final ValueChanged<String>? onChanged;
  final String? initialValue;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool showToggleIcon;
  final Color? suffixIconColor; // New parameter for suffix icon color
  final double? suffixIconSize; // New parameter for suffix icon size

  const CustomTextFormField({
    Key? key,
    this.width,
    this.hintText,
    this.textAlign = TextAlign.left,
    this.onChanged,
    this.initialValue,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.showToggleIcon = false,
    this.suffixIconColor, // Add suffixIconColor parameter
    this.suffixIconSize, // Add suffixIconSize parameter
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? suffixIcon = widget.suffixIcon != null
        ? widget.suffixIcon
        : widget.showToggleIcon && widget.suffixIcon == null
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: widget.suffixIconColor, // Apply custom color
                  size: widget.suffixIconSize, // Apply custom size
                ),
                onPressed: _toggleObscureText,
              )
            : null;

    return FocusableActionDetector(
      focusNode: widget.focusNode,
      child: TextFormField(
        textAlign: widget.textAlign,
        onChanged: widget.onChanged,
        style: TextStyle(fontWeight: normalFontWeight),
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontWeight: normalFontWeight,
            color: mediumColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: (textFormFieldHeight - 16.0) / 2,
            horizontal: 16.0,
          ),
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
          prefixIcon: widget.prefixIcon,
          suffixIcon: suffixIcon,
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
