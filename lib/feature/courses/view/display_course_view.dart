import 'package:eduway/feature/courses/view/widgets/display_course_widgets/display_course_body.dart';
import 'package:flutter/material.dart';

class DisplayCourseView extends StatelessWidget {
  const DisplayCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DisplayCourseBody(),
    );
  }
}