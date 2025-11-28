import 'package:eduway/feature/courses/view/widgets/display_course_widgets/cousrse_leatures_list.dart';
import 'package:eduway/feature/courses/view/widgets/display_course_widgets/leature_details.dart';
import 'package:eduway/feature/courses/view/widgets/display_course_widgets/video_player.dart';
import 'package:flutter/material.dart';

class DisplayCourseBody extends StatelessWidget {
  const DisplayCourseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          VideoPlayer(),
          LeatureDetails(
            title: "Flutter Development Course",
            instructor: "John Doe",
          ),
          const SizedBox(height: 20),
          CousrseLeaturesList(),
        ],
      ),
    );
  }
}