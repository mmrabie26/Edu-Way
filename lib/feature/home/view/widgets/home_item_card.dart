import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeItemCard extends StatelessWidget {
  const HomeItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 240,
      child: Card(
        color: ThemeColors.backgroundLight,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 160,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: "asdasd",
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      const ColoredBox(color: ThemeColors.primary),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  "3.5",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RatingBarIndicator(
                  rating: 3.5,
                  itemCount: 5,
                  itemSize: 14,
                  itemBuilder: (BuildContext context, int index) =>
                      Icon(Icons.star, color: ThemeColors.primary),
                ),
              ],
            ),
            const Text(
              "UI/UX Design",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset(AssetsData.person),
                const SizedBox(width: 5),
                const Text(
                  "by John Doe",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "\$20.00",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ThemeColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
