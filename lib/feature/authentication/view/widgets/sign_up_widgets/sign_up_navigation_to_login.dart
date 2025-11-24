import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class SignUpNavigationToLogin extends StatelessWidget {
  const SignUpNavigationToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "Login Here",
                        style: TextStyle(color: ThemeColors.secondary),
                      ),
                    ),
                  ],
                );
  }
}