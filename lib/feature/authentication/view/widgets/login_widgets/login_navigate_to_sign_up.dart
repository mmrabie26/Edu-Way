import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class LoginNavigateToSignUp extends StatelessWidget {
   Function? onPressed;
   LoginNavigateToSignUp({super.key,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don’t have an account? "),
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "Sign Up Here",
                        style: TextStyle(color: ThemeColors.primary),
                      ),
                    ),
                  ],
                );
  }
}