import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  const DefaultButton({required this.child,this.onPressed,this.buttonStyle,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FilledButton(
          onPressed: onPressed,
          style: buttonStyle,
          child: child,
        ),
    );
  }
}
