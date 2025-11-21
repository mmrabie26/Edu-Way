import 'package:eduway/feature/onboard/model/onboard_model.dart';
import 'package:eduway/feature/onboard/view/widgets/default_onboard_page_view.dart';
import 'package:flutter/material.dart';

class OnboardPageView extends StatelessWidget {
  PageController controller;
  int itemCount;
  void Function(int) onPageChanged;
  List<OnboardModel> models;

 OnboardPageView({super.key,required this.controller, required this.itemCount, required this.onPageChanged,required this.models});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: itemCount,
      onPageChanged: onPageChanged,
      itemBuilder: (BuildContext context, int index) =>
          DefaultOnboardPageView(
            onboardModel: models[index],
          ),
    );
  }
}