import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:eduway/core/widgets/default_textfromfield.dart';
import 'package:eduway/feature/authentication/view_model/signup/sign_up_cubit.dart';
import 'package:eduway/feature/authentication/view_model/signup/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocSelector<SignUpCubit, SignUpState, Tuple2<String, bool>>(
          selector: (state) => Tuple2(state.fullName, state.fullNameValid),
          builder: (context, state) {
            final SignUpCubit cubit = context.read<SignUpCubit>();
            final String fullName = state.item1;
            final bool fullNameValid = state.item2;
            return DefaultTextfromfield(
              lable: const Text("Full Name"),
              onChanged: (String fullName) => cubit.changeFullName(fullName),
              errorText: fullName.isNotEmpty && !fullNameValid
                  ? 'full name unvalid'
                  : null,
            );
          },
        ),
        const SizedBox(height: Spacing.s12),
        BlocSelector<SignUpCubit, SignUpState, Tuple2<String, bool>>(
          selector: (state) => Tuple2(state.email, state.emailValid),
          builder: (context, state) {
            final SignUpCubit cubit = context.read<SignUpCubit>();
            final String email = state.item1;
            final bool emailValid = state.item2;
            return DefaultTextfromfield(
              lable: const Text("Email"),
              onChanged: (String email) => cubit.changeEmail(email),
              errorText: email.isNotEmpty && !emailValid
                  ? 'Invalid email'
                  : null,
            );
          },
        ),
        const SizedBox(height: Spacing.s12),
        BlocSelector<SignUpCubit, SignUpState, Tuple3<String, bool, bool>>(
          selector: (state) =>
              Tuple3(state.password, state.passwordValid, state.passwordHide),
          builder: (context, state) {
            final SignUpCubit cubit = context.read<SignUpCubit>();
            final String password = state.item1;
            final bool passwordValid = state.item2;
            final bool passwordHide = state.item3;
            return DefaultTextfromfield(
              lable: const Text("Password"),
              passwordHide: passwordHide,
              suffixIcon: IconButton(
                onPressed: () => cubit.changePasswordVisibility(),
                icon: Icon(
                  Icons.remove_red_eye,
                  color: passwordHide ? Colors.black : ThemeColors.primary,
                ),
              ),
              onChanged: (String password) => cubit.changePassword(password),
              errorText: password.isNotEmpty && !passwordValid
                  ? 'Invalid password'
                  : null,
            );
          },
        ),
        const SizedBox(height: Spacing.s12),
        BlocSelector<SignUpCubit, SignUpState, Tuple3<String, bool, bool>>(
          selector: (state) => Tuple3(
            state.confirmPassword,
            state.confirmPasswordValid,
            state.confirmPasswordHide,
          ),
          builder: (context, state) {
            final SignUpCubit cubit = context.read<SignUpCubit>();
            final String confirmPassword = state.item1;
            final bool confirmPasswordValid = state.item2;
            final bool confirmPasswordHide = state.item3;
            return DefaultTextfromfield(
              lable: const Text("Confirm Password"),
              passwordHide: confirmPasswordHide,
              suffixIcon: IconButton(
                onPressed: () => cubit.changeConfirmPasswordVisibility(),
                icon: Icon(
                  Icons.remove_red_eye,
                  color: confirmPasswordHide
                      ? Colors.black
                      : ThemeColors.primary,
                ),
              ),
              onChanged: (String confirmPassword) =>
                  cubit.changeConfirmPassword(confirmPassword),
              errorText: confirmPassword.isNotEmpty && !confirmPasswordValid
                  ? 'confirm password unvalid'
                  : null,
            );
          },
        ),
      ],
    );
  }
}
