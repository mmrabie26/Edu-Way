import 'package:eduway/feature/profile/view/widgets/profile_category_item_builder.dart';
import 'package:flutter/material.dart';

class ProfileCategoriesLsit extends StatelessWidget {
  const ProfileCategoriesLsit({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ProfileCategoryItemBuilder(),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 5,
    );
  }
}
