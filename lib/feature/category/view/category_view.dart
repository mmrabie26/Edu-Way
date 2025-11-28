import 'package:eduway/core/widgets/defualt_app_bar.dart';
import 'package:eduway/feature/category/view/category_body.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefualtAppBar(title: "Categories", onTap: (){}),
      body: CategoryBody(),
    );
  }
}
