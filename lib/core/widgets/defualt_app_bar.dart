import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefualtAppBar extends StatelessWidget implements PreferredSizeWidget{
    final String title;
    final VoidCallback? onTap;
    bool leadingWidgets=true;
    DefualtAppBar({required this.title,  this.onTap,leadingWidgets, super.key});

  @override
  Widget build(BuildContext context) {


    return AppBar(
      title: Text(title),
      actions: !leadingWidgets?[]:
      [
         Padding(
          padding: const EdgeInsets.only(right: Spacing.s12),
          child: InkWell(
            onTap: onTap,
            child: SvgPicture.asset(AssetsData.cart),
          ),
        ),
      ],
      leading: Icon(Icons.arrow_back_ios_new_outlined),
      centerTitle: true,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}