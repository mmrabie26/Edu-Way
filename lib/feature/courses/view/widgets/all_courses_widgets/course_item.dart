import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          child: CachedNetworkImage(
            imageUrl: 'ht.com/course1.jpg',
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) =>
                ColoredBox(color: ThemeColors.primary),
            width: 160,
            height: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "title",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 13),
              Row(
                children: [
                  SvgPicture.asset(AssetsData.person),
                  SizedBox(width: 5),
                  Text(
                    "Hossam Galy",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text("Leature: 12", overflow: TextOverflow.ellipsis, maxLines: 1),
            ],
          ),
        ),
      ],
    );
  }
}
