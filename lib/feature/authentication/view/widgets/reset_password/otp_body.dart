import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/widgets/default_button.dart';
import 'package:eduway/feature/authentication/view/widgets/auth_title.dart';
import 'package:flutter/material.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AuthTitle(),
              const SizedBox(height: Spacing.s16),
              // DefaultTextfromfield(lable: Text("Otp Code"),textInputType: TextInputType.number,),
              const SizedBox(height: Spacing.s16),
              DefaultButton(child: Text("Submit"), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
