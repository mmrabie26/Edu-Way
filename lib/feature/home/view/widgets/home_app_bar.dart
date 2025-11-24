import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  String userName;
  VoidCallback? onTap;
  HomeAppBar({required this.userName, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColors.backgroundLight,
      title: Row(
        children: [
          const Text("welcome"),
          const SizedBox(width: Spacing.s8),
          Text(
            userName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ThemeColors.primary,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: Spacing.s12),
          child: InkWell(
            onTap: onTap,
            child: SvgPicture.asset(AssetsData.cart),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
