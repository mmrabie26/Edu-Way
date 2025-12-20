import 'package:eduway/app/app_router.dart';
import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/core/widgets/snack_bar_message.dart';
import 'package:eduway/feature/authentication/view/widgets/verify_otp/verify_otp_text.dart';
import 'package:eduway/feature/authentication/view/widgets/verify_otp/verify_resend_code.dart';
import 'package:eduway/feature/authentication/view/widgets/verify_otp/verify_textfield_and_button.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_cubit.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class VerifyOtpBody extends StatelessWidget {
  const VerifyOtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyOtpCubit,VerifyOtpState>(
      listener: (context, state) {
        if(state.requestStatus==RequestStatus.loaded){
          SnackBarMessage.showSuccess(context, S.of(context).auth_verificationSuccessful);
          context.goNamed(AppRouter.login);
        }
        if(state.requestStatus==RequestStatus.failure){
          SnackBarMessage.showError(context,S.of(context).auth_somethingWentWrong);
        }
      },
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               VerifyOtpText(),
               SizedBox(height: 10),
               VerifyTextfieldAndButton(),
               SizedBox(height: 10),
               VerifyResendCode(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
