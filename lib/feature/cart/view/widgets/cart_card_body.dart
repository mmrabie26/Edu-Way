import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class CartCardBody extends StatelessWidget {
  const CartCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Machine Learning",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              SvgPicture.asset(AssetsData.cardArrow),
            ],
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              SvgPicture.asset(AssetsData.person),
              Text(
                "Stephen Moris",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text("4.5", overflow: TextOverflow.ellipsis, maxLines: 1),
              const SizedBox(width: 5),
              RatingBar.builder(
                itemCount: 5,
                itemSize: 15,

                itemBuilder: (context, index) =>
                    Icon(Icons.star_border_outlined),
                onRatingUpdate: (value) {},
              ),
            ],
          ),
          Text(
            "18 PNG",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              color: ThemeColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
  