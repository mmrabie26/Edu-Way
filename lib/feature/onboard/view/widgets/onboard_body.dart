import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/feature/onboard/model/onboard_model.dart';
import 'package:eduway/feature/onboard/view/widgets/indicator_skip_button.dart';
import 'package:eduway/feature/onboard/view/widgets/onboard_next_button.dart';
import 'package:eduway/feature/onboard/view/widgets/onboard_page_view.dart';
import 'package:flutter/material.dart';

class OnboardBody extends StatefulWidget {
  const OnboardBody({super.key});

  @override
  State<OnboardBody> createState() => _OnboardBodyState();
}

class _OnboardBodyState extends State<OnboardBody> {
  final PageController _controller = PageController();

  int currentPage = 0;

  List<OnboardModel> onboardModels = [
    OnboardModel(
      imagePath: AssetsData.onboard1,
      title: "Certification and Badges",
      desc: "Earn a certificate after completion of\nevery course",
    ),
    OnboardModel(
      imagePath: AssetsData.onboard2,
      title: "Progress Tracking",
      desc: "Check your Progress of every course",
    ),
    OnboardModel(
      imagePath: AssetsData.onboard3,
      title: "Of f line Acc ess",
      desc: "Make your course available offline",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            IndicatorSkipButton(
              currentPage: currentPage,
              length: onboardModels.length,
            ),
            Expanded(
              child: OnboardPageView(
                controller: _controller,
                itemCount: onboardModels.length,
                onPageChanged: (value) => setState(() => currentPage = value),
                models: onboardModels,
              ),
            ),
            const SizedBox(height: 50),
            OnboardNextButton(
              onPressed: () {
                if(currentPage<onboardModels.length-1){
                  setState(() {
                    currentPage++;
                  });
                  _controller.nextPage( 
                  duration: const Duration(milliseconds: 400), 
                  curve: Curves.easeInOut
                  );
                }else{
                  //navigate to Login
                }
              },
              ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
