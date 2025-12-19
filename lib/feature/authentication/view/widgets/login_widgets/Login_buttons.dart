import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/widgets/default_button.dart';
import 'package:eduway/feature/authentication/view/widgets/facebook_google_button.dart';
import 'package:eduway/feature/authentication/view/widgets/or_spalt_widget.dart';
import 'package:eduway/feature/authentication/view_model/login/login_cubit.dart';
import 'package:eduway/feature/authentication/view_model/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocSelector<LoginCubit, LoginState, Tuple2<RequestStatus, bool>>(
          selector: (state) => Tuple2(state.loginStatus, state.loginValidation),

          builder: (context, state) {
            final RequestStatus loginStatus = state.item1;
            final loginValidation = state.item2;
            
            return DefaultButton(
              onPressed:
                  !loginValidation || loginStatus == RequestStatus.loading
                  ? null
                  : () => context.read<LoginCubit>().loginWithEmailOrPhone(),
              child: loginStatus == RequestStatus.loading
                  ? const Center(
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: RepaintBoundary(
                          child: CircularProgressIndicator(color: Colors.white),
                        ),
                      ),
                    )
                  : const SizedBox(height: 25, child: Text("Sign In")),
            );
          },
        ),
        const SizedBox(height: Spacing.s16),
        const OrSpaltWidget(),
        const SizedBox(height: Spacing.s16),
        const FacebookGoogleButton(),
      ],
    );
  }
}
