import 'package:eduway/core/theme/theme_colors.dart';
import 'package:eduway/core/widgets/category_container.dart';
import 'package:flutter/material.dart';

class CourseCategories extends StatelessWidget {
  const CourseCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryContainer(title: "Lecture",color: ThemeColors.secondary,),
          CategoryContainer(title: "Download"),
          CategoryContainer(title: "Certificate"),
          CategoryContainer(title: "More"),
        ],
      ),
    );
  }
}
