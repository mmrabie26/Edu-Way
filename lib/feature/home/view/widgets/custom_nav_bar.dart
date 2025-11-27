import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
        currentIndex: 0,
        onTap: (i) => {},
        selectedItemColor: ThemeColors.primary,
        items: [
           SalomonBottomBarItem(
            icon: SvgPicture.asset(AssetsData.home,color: ThemeColors.primary,),
            title: Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: SvgPicture.asset(AssetsData.course,color: ThemeColors.primary,),
            title: Text("Courses"),
          ),
           SalomonBottomBarItem(
            icon: SvgPicture.asset(AssetsData.search,color: ThemeColors.primary,),
            title: Text("Search"),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      );
  }
}