import 'package:eduway/feature/authentication/view/widgets/verify_otp/verify_otp_body.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyOtpView extends StatelessWidget {
  final String email;
  const VerifyOtpView({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          VerifyOtpCubit(email: email)
            ..changeResendCounter(),
      child: Scaffold(body: const VerifyOtpBody()),
    );
  }
}
