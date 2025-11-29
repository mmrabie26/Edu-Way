import 'package:eduway/core/widgets/defualt_app_bar.dart';
import 'package:eduway/feature/profile/view/widgets/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefualtAppBar(title: "Profile"),
      body: ProfileBody(),
    );
  }
}