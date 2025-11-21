import 'package:eduway/feature/authentication/view/widgets/reset_password/confirm_password_body.dart';
import 'package:flutter/material.dart';

class ConfirmPasswordView extends StatelessWidget {
  const ConfirmPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfirmPasswordBody(),
    );
  }
}