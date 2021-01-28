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
  final IconData icon;
  final Function iconPressed;
  final Color textColor;
  final String fontFamily;

  bool isPassword;
  TextFieldInput(
      {@required this.labelText,
      this.maxLines = 1,
      this.isPassword = false,
      this.onChanged,
      this.onTap,
      this.isWarningVisible = false,
      this.textColor = Colors.white,
      this.fontFamily,
      @required this.controller,
      this.icon,
      this.iconPressed});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 5,
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
              color: textColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: textColor,
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
          suffixIcon: IconButton(
            icon: Icon(icon),
            onPressed: () => iconPressed(),
          )),
      onChanged: (value) {
        onChanged(value);
      },
      onTap: () {
        onTap();
      },
    );
  }
}
