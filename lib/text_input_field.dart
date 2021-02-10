library text_input_field;

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldInput extends StatelessWidget {
  final String labelText;
  final int maxLines;
  final Function onChanged;
  final Function onTap;
  final TextEditingController controller;
  final bool isWarningVisible;
  final Widget suffixIcon;
  final Function suffixIconPressed;
  final Widget prefixIcon;
  final Function prefixIconPressed;
  final Color textColor;
  final Color borderColor;
  final String fontFamily;
  final EdgeInsetsGeometry padding;
  final int maxLength;

  bool isPassword;
  TextFieldInput(
      {@required this.labelText,
      this.maxLines = 1,
      this.isPassword = false,
      this.onChanged,
      this.onTap,
      this.isWarningVisible = false,
      this.textColor = Colors.black,
      this.borderColor = Colors.black,
      this.fontFamily,
      @required this.controller,
      this.prefixIcon,
      this.prefixIconPressed,
      this.suffixIcon,
      this.suffixIconPressed,
      this.padding,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        maxLength: maxLength,
        obscureText: isPassword,
        controller: controller,
        maxLines: maxLines,
        cursorColor: textColor,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontSize: 15,
          fontFamily: fontFamily,
        ),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: textColor,
              fontFamily: fontFamily,
            ),
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
              borderSide: new BorderSide(),
            ),
            prefixIcon: GestureDetector(
              child: prefixIcon,
              onTap: () => prefixIconPressed(),
            ),
            suffixIcon: GestureDetector(
              child: suffixIcon,
              onTap: () => suffixIconPressed(),
            )),
        onChanged: (value) {
          onChanged(value);
        },
        onTap: () {
          onTap();
        },
      ),
    );
  }
}
