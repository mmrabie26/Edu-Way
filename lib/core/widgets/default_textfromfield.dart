import 'package:flutter/material.dart';

class DefaultTextfromfield extends StatelessWidget {
  final Widget lable;
  final bool passwordHide;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  final Widget? suffixIcon;
  final String? errorText;
  const DefaultTextfromfield({
    super.key,
    this.passwordHide=false,
    this.textInputType = TextInputType.text,
    this.suffixIcon,
    this.errorText,
    required this.onChanged,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: passwordHide,
        decoration: InputDecoration(
          label: lable,
          suffixIcon: suffixIcon!=null?RepaintBoundary(child: suffixIcon,):null,
          errorText: errorText,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
