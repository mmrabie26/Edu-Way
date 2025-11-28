
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String title;
  Color? color;
  CategoryContainer({required this.title, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color?? ThemeColors.categoryBackroudColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
              padding: const EdgeInsets.all(10),
        child: Text(title, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
