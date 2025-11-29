import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileUserDetails extends StatelessWidget {
  ImageProvider? image;
  ProfileUserDetails({image, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          const SizedBox(height: 40,),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: ThemeColors.primary,
                backgroundImage: image,
                radius: 60,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(AssetsData.profileAddImage),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Text(
            "Muhammad Rafey",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            "muhammadrafey999@gmail.com",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );
  }
}