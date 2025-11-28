import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl: "imageUrl",
                width: 160,
                height: 100,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    ColoredBox(color: ThemeColors.primary),
              ),
            );
  }
}