import 'package:eduway/core/constants/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardNextButton extends StatelessWidget {
  VoidCallback? onPressed;

   OnboardNextButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return  FilledButton.icon(
              onPressed: onPressed,
              label: SvgPicture.asset(AssetsData.onboardNextButton,width: 50,),
              style: FilledButton.styleFrom(
                minimumSize: const Size(80, 80),
                elevation: 8,
                shadowColor: Colors.grey.withAlpha(100),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            );
  }
}