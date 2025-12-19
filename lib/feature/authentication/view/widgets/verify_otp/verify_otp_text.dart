import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_cubit.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class VerifyOtpText extends StatelessWidget {
  const VerifyOtpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 150),
        RepaintBoundary(child: SvgPicture.asset(AssetsData.appLogo)),
        const Text(
          "We just send an email",
          style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 10),
        const Text("enter your email box we send to "),
        const SizedBox(height: 5),
        BlocSelector<VerifyOtpCubit, VerifyOtpState,String>(
          selector: (state) =>state.email,
          builder: (context, email) => Text(email),
        ),
      ],
    );
  }
}
