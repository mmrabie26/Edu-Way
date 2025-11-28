import 'package:eduway/feature/courses/view/widgets/all_courses_widgets/all_courses_list.dart';
import 'package:eduway/feature/courses/view/widgets/all_courses_widgets/cousres_categories.dart';
import 'package:flutter/material.dart';

class AllCousresBody extends StatelessWidget {
  const AllCousresBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: 
      [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CousresCategories(),
        ),
        const SizedBox(height: 20),
        Expanded(child: AllCoursesList()),
      ],
    );
  }
}