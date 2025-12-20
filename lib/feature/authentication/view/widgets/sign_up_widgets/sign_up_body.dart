import 'package:eduway/app/app_router.dart';
import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/widgets/snack_bar_message.dart';
import 'package:eduway/feature/authentication/view/widgets/auth_title.dart';
import 'package:eduway/feature/authentication/view/widgets/sign_up_widgets/sign_up_buttons.dart';
import 'package:eduway/feature/authentication/view/widgets/sign_up_widgets/sign_up_text_field.dart';
import 'package:eduway/feature/authentication/view_model/signup/sign_up_cubit.dart';
import 'package:eduway/feature/authentication/view_model/signup/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state.requestStatus == RequestStatus.failure) {
          SnackBarMessage.showError(context, state.errorMessage);
        }

        if (state.requestStatus == RequestStatus.loaded) {
          SnackBarMessage.showSuccess(
              context, S.of(context).auth_checkYourEmailToVerifyAccount);
              context.goNamed(AppRouter.verifyOtp,pathParameters: {'email':state.email});
        }
      },
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AuthTitle(),
                SizedBox(height: Spacing.s16),
                SignUpTextField(),
                SizedBox(height: Spacing.s12),
                SignUpButtons(),
                SizedBox(height: Spacing.s12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
