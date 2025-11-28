import 'package:eduway/core/widgets/defualt_app_bar.dart';
import 'package:eduway/feature/courses/view/widgets/all_courses_widgets/all_cousres_body.dart';
import 'package:flutter/material.dart';

class AllCousresView extends StatelessWidget {
  const AllCousresView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefualtAppBar(title: "Courses", onTap: (){}),
      body: AllCousresBody(),
    );
  }
}