import 'package:flutter/material.dart';
import 'package:truckhub/features/onboarding/buid_dot.dart';

import '../../core/constants/assets_location.dart';
import '../../core/constants/dimension.dart';
import '../../core/constants/string.dart';
import 'onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  // int currentIndex ;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView.builder(
              physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onBoardingData.length,
              itemBuilder: (context, index) => OnboardingContent(
                  image: Assets.pics[index]["image"],
                  title: onBoardingData[index]["title"],
                  currentIndex: index,
                  contentWidget: Row(
                    children: List.generate(
                      onBoardingData.length,
                      (index) => BuildDot(
                        currentPage: currentPage,
                        index: index,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
