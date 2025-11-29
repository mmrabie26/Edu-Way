import 'package:eduway/feature/profile/view/widgets/profile_categories_list.dart';
import 'package:eduway/feature/profile/view/widgets/profile_user_details.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  ImageProvider? image;
  ProfileBody({this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: 
          [
            ProfileUserDetails(),
            const SizedBox(height: 20,),
            Expanded(child: ProfileCategoriesLsit()),
          ],
        ),
      ),
    );
  }
}