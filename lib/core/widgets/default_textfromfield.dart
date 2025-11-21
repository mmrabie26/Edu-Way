import 'package:flutter/material.dart';

class DefaultTextfromfield extends StatelessWidget {
  Widget lable;
  bool passwordHide;
  TextInputType textInputType;
  Widget? suffixIcon;
  DefaultTextfromfield({
    super.key,
    this.passwordHide=false,
    this.textInputType = TextInputType.text,
    this.suffixIcon,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: passwordHide,
      decoration: InputDecoration(
        label: lable,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
