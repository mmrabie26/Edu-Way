import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_cubit.dart';
import 'package:eduway/feature/authentication/view_model/verify_otp/verify_otp_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eduway/generated/l10n.dart';
import 'package:tuple/tuple.dart';

class VerifyResendCode extends StatelessWidget {
  const VerifyResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<VerifyOtpCubit, VerifyOtpState,Tuple2<int, bool>>(
      selector: (state) => Tuple2(state.resendCounter,state.canResned),
      builder: (context, state) {
        final cubit = context.read<VerifyOtpCubit>();
        final resendCounter = state.item1;
        final canResned = state.item2;
        return Column(
          children: [
            Text(S.of(context).auth_didntReceiveCode),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: canResned?()=> cubit.resnedCode():null, child: Text(S.of(context).auth_resend)),
                Text(S.of(context).auth_timeRemaining(resendCounter)),
              ],
            ),
          ],
        );
      },
    );
  }
}
