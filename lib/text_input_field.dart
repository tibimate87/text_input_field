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
  final IconData suffixIcon;
  final Function suffixIconPressed;
  final IconData prefixIcon;
  final Function prefixIconPressed;
  final Color textColor;
  final Color borderColor;
  final Color labelColor;
  final Color prefixIconColor;
  final Color sufixIconColor;
  final String fontFamily;
  final EdgeInsetsGeometry padding;
  final int maxLength;

  bool isPassword;
  TextFieldInput({
    required this.labelText,
    this.maxLines = 1,
    this.isPassword = false,
    required this.onChanged,
    required this.onTap,
    this.isWarningVisible = false,
    this.textColor = Colors.black,
    this.borderColor = Colors.black,
    this.labelColor = Colors.black,
    required this.fontFamily,
    required this.controller,
    required this.prefixIcon,
    required this.prefixIconPressed,
    required this.suffixIcon,
    required this.suffixIconPressed,
    this.padding = const EdgeInsets.fromLTRB(0, 5, 0, 5),
    this.maxLength = 20,
    this.prefixIconColor = Colors.black,
    this.sufixIconColor = Colors.black,
  });

  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        focusNode: FocusNode(),
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
          counter: SizedBox(
            height: 0,
          ),
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
            color: labelColor,
            fontFamily: fontFamily,
          ),
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(),
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: prefixIconColor,
          ),
          // prefix: IconButton(
          //   icon: Icon(
          //     prefixIcon,
          //   ),
          //   onPressed: () => prefixIconPressed(),
          // ),
          suffixIcon: IconButton(
            icon: Icon(suffixIcon, color: sufixIconColor),
            onPressed: () => suffixIconPressed(),
          ),
          // suffix: IconButton(
          //   icon: Icon(suffixIcon, color: sufixIconColor),
          //   onPressed: () => suffixIconPressed(),
          // ),
        ),
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
