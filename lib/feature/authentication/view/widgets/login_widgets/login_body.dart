import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/widgets/default_button.dart';
import 'package:eduway/feature/authentication/view/widgets/facebook_google_button.dart';
import 'package:eduway/feature/authentication/view/widgets/login_widgets/login_navigate_to_sign_up.dart';
import 'package:eduway/feature/authentication/view/widgets/or_spalt_widget.dart';
import 'package:eduway/core/widgets/default_textfromfield.dart';
import 'package:eduway/feature/authentication/view/widgets/auth_title.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const AuthTitle(),
                DefaultTextfromfield(
                  lable: Text("Email"),
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: Spacing.s16),
                DefaultTextfromfield(
                  lable: Text("password"),
                  passwordHide: true,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye),
                  ),
                ),
                const SizedBox(height: Spacing.s16),
                DefaultButton(child: const Text("Sign In"),onPressed: (){},),
                const SizedBox(height: Spacing.s16),
                OrSpaltWidget(),
                const SizedBox(height: Spacing.s16),
                FacebookGoogleButton(),
                const SizedBox(height: Spacing.s32),
                LoginNavigateToSignUp(),
                const SizedBox(height: Spacing.s24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
