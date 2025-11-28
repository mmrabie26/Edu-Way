import 'package:eduway/core/constants/app_strings.dart';
import 'package:eduway/core/theme/light_theme.dart';
import 'package:eduway/feature/courses/view/display_course_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: AppString.appName,
          debugShowCheckedModeBanner: false,
          theme: lightTheme(),
          home: DisplayCourseView(),
        );
  }
}
