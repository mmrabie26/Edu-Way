import 'package:eduway/feature/authentication/view/widgets/reset_password/otp_body.dart';
import 'package:flutter/material.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpBody(),
    );
  }
}