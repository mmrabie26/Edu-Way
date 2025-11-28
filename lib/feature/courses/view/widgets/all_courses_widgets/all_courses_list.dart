import 'package:eduway/feature/courses/view/widgets/all_courses_widgets/course_item.dart';
import 'package:flutter/material.dart';

class AllCoursesList extends StatelessWidget {
  const AllCoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemBuilder: (context, index) => CourseItem(),
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: 5,
      ),
    );
  }
}
