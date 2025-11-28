import 'package:eduway/feature/home/view/widgets/header_with_see_all.dart';
import 'package:eduway/core/widgets/category_container.dart';
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWithSeeAll(text: "Category", onPressed: () {}),
        const SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryContainer(title: "UI/UX design",),
              const SizedBox(width: 10),
              CategoryContainer(title: "Flutter",),
              const SizedBox(width: 10),
              CategoryContainer(title: "Asp.net core",),
            ],
          ),
        ),
      ],
    );
  }
}
