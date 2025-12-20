import 'package:eduway/app/app_router.dart';
import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/widgets/snack_bar_message.dart';
import 'package:eduway/feature/authentication/view/widgets/login_widgets/Login_buttons.dart';
import 'package:eduway/feature/authentication/view/widgets/login_widgets/login_navigate_to_sign_up.dart';
import 'package:eduway/feature/authentication/view/widgets/login_widgets/login_text_field.dart';
import 'package:eduway/feature/authentication/view/widgets/auth_title.dart';
import 'package:eduway/feature/authentication/view_model/login/login_cubit.dart';
import 'package:eduway/feature/authentication/view_model/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.loginStatus == RequestStatus.failure) {
          SnackBarMessage.showError(context, state.errorMessage);
        }
        if (state.loginStatus == RequestStatus.loaded) {
          SnackBarMessage.showSuccess(context, S.of(context).auth_loginSuccessful);
          context.goNamed(AppRouter.home);
        }
      },
      child: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: SingleChildScrollView(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  AuthTitle(),
                  LoginTextField(),
                  SizedBox(height: Spacing.s16),
                  LoginButtons(),
                  SizedBox(height: Spacing.s32),
                  LoginNavigateToSignUp(),
                  SizedBox(height: Spacing.s24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
