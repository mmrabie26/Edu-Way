import 'package:eduway/core/widgets/category_container.dart';
import 'package:flutter/material.dart';

class CousresCategories extends StatelessWidget {
  const CousresCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CategoryContainer(title: "All"),
        SizedBox(width: 10),
        CategoryContainer(title: "Downloads"),
        SizedBox(width: 10),
        CategoryContainer(title: "Archived"),
      ],
    );
  }
}