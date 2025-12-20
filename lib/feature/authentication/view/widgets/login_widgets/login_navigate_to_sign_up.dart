import 'package:eduway/app/app_router.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class LoginNavigateToSignUp extends StatelessWidget {
   final Function? onPressed;
   const LoginNavigateToSignUp({super.key,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).auth_dontHaveAccount),
                    TextButton(
                      onPressed: () => context.goNamed(AppRouter.signUp),
                      child: Text(
                        S.of(context).auth_signUp,
                        style: TextStyle(color: ThemeColors.secondary),
                      ),
                    ),
                  ],
                );
  }
}