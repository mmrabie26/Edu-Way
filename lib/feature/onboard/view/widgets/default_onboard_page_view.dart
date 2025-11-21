import 'package:eduway/feature/onboard/model/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefaultOnboardPageView extends StatelessWidget {
  OnboardModel onboardModel;
   DefaultOnboardPageView({required this.onboardModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: 
      [
        SvgPicture.asset(onboardModel.imagePath),
        const SizedBox(height: 35,),
        Text(
          onboardModel.title,
          maxLines: 1,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          onboardModel.desc,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        
      ],
    );
  }
}