import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:eduway/feature/home/view/widgets/home_item_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemBuilder: (context, index) => Column(
          children: [
            Card(
              color: ThemeColors.categoryBackroudColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    Text("UI/UX Design"),
                    SvgPicture.asset(AssetsData.categoryArrow),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Visibility(
              visible: true,
              child: HomeItemContainer(),
            ),
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(height: 20),
        itemCount: 5,
      ),
    );
  }
}
