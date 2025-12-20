import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/widgets/default_button.dart';
import 'package:eduway/feature/authentication/view/widgets/facebook_google_button.dart';
import 'package:eduway/feature/authentication/view/widgets/or_spalt_widget.dart';
import 'package:eduway/feature/authentication/view/widgets/sign_up_widgets/sign_up_navigation_to_login.dart';
import 'package:eduway/feature/authentication/view_model/signup/sign_up_cubit.dart';
import 'package:eduway/feature/authentication/view_model/signup/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocSelector<SignUpCubit, SignUpState, Tuple2<RequestStatus, bool>>(
          selector: (state) =>
              Tuple2(state.requestStatus, state.signUpValidation),
          builder: (context, state) {
            final SignUpCubit cubit = context.read<SignUpCubit>();
            final RequestStatus requestStatus = state.item1;
            final bool signUpValidation = state.item2;
            return DefaultButton(
              onPressed:
                  !signUpValidation || requestStatus == RequestStatus.loading
                  ? null
                  : () => cubit.signUpWithEmail(),
              child: requestStatus == RequestStatus.loading
                  ? const Center(
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: RepaintBoundary(child: CircularProgressIndicator(color: Colors.white)),
                      ),
                    )
                  : SizedBox(height: 25, child: Text(S.of(context).auth_signUp)),
            );
          },
        ),
        const SizedBox(height: Spacing.s12),
        const OrSpaltWidget(),
        const SizedBox(height: Spacing.s12),
        FacebookGoogleButton(),
        const SizedBox(height: Spacing.s12),
        SignUpNavigationToLogin(),
      ],
    );
  }
}
