import 'package:eduway/feature/authentication/view/widgets/reset_password/reset_password_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResetPasswordBody(),
    );
  }
}