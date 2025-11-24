import 'package:eduway/feature/home/view/widgets/header_with_see_all.dart';
import 'package:eduway/feature/home/view/widgets/home_item_card.dart';
import 'package:flutter/material.dart';

class HomeItemContainer extends StatelessWidget {
  const HomeItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWithSeeAll(text: "Students Also Search for", onPressed: () {}),
        const SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => HomeItemCard(),
            separatorBuilder: (context, index) => SizedBox(width: 5),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
