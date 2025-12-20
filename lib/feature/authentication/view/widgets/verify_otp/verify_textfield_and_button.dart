import 'package:eduway/core/constants/enums.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:eduway/core/widgets/default_button.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_cubit.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:tuple/tuple.dart';

class VerifyTextfieldAndButton extends StatelessWidget {
  const VerifyTextfieldAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<VerifyOtpCubit>();
    return BlocListener<VerifyOtpCubit, VerifyOtpState>(
      listener: (context, state) {},
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType:  AnimationType.fade,
              cursorColor: ThemeColors.primary,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ThemeColors.black,
              ),

              pinTheme:  PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 50,
                fieldWidth: 45,

                activeColor: ThemeColors.primary,
                selectedColor: ThemeColors.primary,
                inactiveColor: ThemeColors.black,
              ),
              onChanged: (code) => cubit.changeCode(code),
              // onCompleted: (code) => cubit.changeCode(code),
            ),
          ),
          const SizedBox(height: 10),
          BlocSelector<
            VerifyOtpCubit,
            VerifyOtpState,
            Tuple2<RequestStatus, bool>
          >(
            selector: (state) => Tuple2(state.requestStatus, state.codeValid),
            builder: (context, state) {
              final codeValid = state.item2;
              final requestStatus = state.item1;
              return DefaultButton(
                onPressed: !codeValid || requestStatus == RequestStatus.loading
                    ? null
                    : () => cubit.verifyOtp(),
                child: requestStatus == RequestStatus.loading
                    ? RepaintBoundary(
                        child: const Center(child: CircularProgressIndicator()),
                      )
                    : Text(S.of(context).auth_verify),
              );
            },
          ),
        ],
      ),
    );
  }
}
