import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:eduway/core/widgets/default_textfromfield.dart';
import 'package:eduway/feature/authentication/view_model/login/login_cubit.dart';
import 'package:eduway/feature/authentication/view_model/login/login_state.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocSelector<LoginCubit, LoginState, Tuple2<bool, String>>(
          selector: (state) => Tuple2(state.emailValid, state.email),
          builder: (context, state) {
            final cubit = context.read<LoginCubit>();
            final bool emailValid = state.item1;
            final String email = state.item2;
            return DefaultTextfromfield(
              lable: Text(S.of(context).auth_email),
              onChanged: (email) => cubit.changeEmail(email),
              textInputType: TextInputType.emailAddress,
              errorText: email.isNotEmpty && !emailValid
                  ? 'email unvalid'
                  : null,
            );
          },
        ),
        const SizedBox(height: Spacing.s16),
        BlocSelector<LoginCubit, LoginState, Tuple3<bool, String, bool>>(
          selector: (state) => Tuple3(
            state.passwordValid,
            state.password,
            state.passwordVisibility,
          ),
          builder: (context, state) {
            final cubit = context.read<LoginCubit>();
            final bool passwordValid = state.item1;
            final String password = state.item2;
            final bool passwordVisibility = state.item3;
            return DefaultTextfromfield(
              lable: Text(S.of(context).auth_password),
              onChanged: (password) => cubit.changePassword(password),
              errorText: password.isNotEmpty && !passwordValid
                  ? S.of(context).auth_invalidPassword
                  : null,
              passwordHide: passwordVisibility,
              suffixIcon: IconButton(
                onPressed: () => cubit.changePasswordVisibility(),
                icon: Icon(
                  Icons.remove_red_eye,
                  color: passwordVisibility
                      ? Colors.black
                      : ThemeColors.primary,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
