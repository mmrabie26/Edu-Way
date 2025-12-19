import 'package:eduway/feature/authentication/view/widgets/sign_up_widgets/sign_up_body.dart';
import 'package:eduway/feature/authentication/view_model/signup/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignUpCubit(),
        child: const SignUpBody(),
      ),
    );
  }
}
