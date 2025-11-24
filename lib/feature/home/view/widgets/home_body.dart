import 'package:eduway/feature/home/view/widgets/home_category.dart';
import 'package:eduway/feature/home/view/widgets/home_item_container.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeCategory(),
            const SizedBox(height: 20),
            HomeItemContainer(),
            const SizedBox(height: 20),
            HomeItemContainer(),
            const SizedBox(height: 20),
            HomeItemContainer(),
          ],
        ),
      ),
    );
  }
}
