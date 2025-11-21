import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/widgets/default_button.dart';
import 'package:eduway/core/widgets/default_textfromfield.dart';
import 'package:eduway/feature/authentication/view/widgets/auth_title.dart';
import 'package:eduway/feature/authentication/view/widgets/facebook_google_button.dart';
import 'package:eduway/feature/authentication/view/widgets/or_spalt_widget.dart';
import 'package:eduway/feature/authentication/view/widgets/sign_up_widgets/sign_up_navigation_to_login.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AuthTitle(),
                const SizedBox(height: Spacing.s16),
                DefaultTextfromfield(lable: const Text("Full Name")),
                const SizedBox(height: Spacing.s12),
                DefaultTextfromfield(lable: const Text("Email")),
                const SizedBox(height: Spacing.s12),
                DefaultTextfromfield(
                  lable: const Text("Password"),
                  passwordHide: true,
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                ),
                const SizedBox(height: Spacing.s12),
                DefaultTextfromfield(
                  lable: const Text("Confirm Password"),
                  passwordHide: true,
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                ),
                const SizedBox(height: Spacing.s12),
                DefaultButton(child: const Text("Sign In"), onPressed: () {}),
                const SizedBox(height: Spacing.s12),
                const OrSpaltWidget(),
                const SizedBox(height: Spacing.s12),
                FacebookGoogleButton(),
                const SizedBox(height: Spacing.s12),
                SignUpNavigationToLogin(),
                const SizedBox(height: Spacing.s12),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
