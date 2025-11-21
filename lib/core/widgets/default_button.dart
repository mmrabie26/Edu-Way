import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  Widget child;
  VoidCallback? onPressed;
  ButtonStyle? buttonStyle;
  DefaultButton({required this.child,this.onPressed,this.buttonStyle,super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: child,
      );
  }
}
