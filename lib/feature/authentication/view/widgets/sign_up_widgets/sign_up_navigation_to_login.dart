import 'package:eduway/app/app_router.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class SignUpNavigationToLogin extends StatelessWidget {
  const SignUpNavigationToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).auth_alreadyHaveAccount),
                    TextButton(
                      onPressed: () =>context.goNamed(AppRouter.login),
                      child: Text(
                        S.of(context).auth_signIn,
                        style: TextStyle(color: ThemeColors.secondary),
                      ),
                    ),
                  ],
                );
  }
}