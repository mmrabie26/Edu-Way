import 'package:eduway/feature/authentication/view/widgets/login_widgets/login_body.dart';
import 'package:eduway/feature/authentication/view_model/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(),
        child:const LoginBody()),
    );
  }
}