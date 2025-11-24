import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class IndicatorSkipButton extends StatelessWidget {
  final int currentPage;
  final int length;
  const IndicatorSkipButton({super.key,required this.currentPage,required this.length});

  @override
  Widget build(BuildContext context) {
    return    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(length, 
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        margin: const EdgeInsets.all(2),
                        width: 12,
                        height: 2,
                        decoration: BoxDecoration(
                          color: currentPage==index?ThemeColors.secondary:Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      ),
                  ),
                  TextButton(onPressed: () {}, child: Text("Skip")),
                ],
              );
  }
}