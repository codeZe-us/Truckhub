import 'package:flutter/material.dart';
import 'package:truckhub/core/constants/assets_location.dart';
import 'package:truckhub/core/constants/color.dart';
import 'package:truckhub/features/widgets/custom_circle_container.dart';

import '../../core/constants/dimension.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          child: Image.asset(
            Assets.back,
            width: getProportionateScreenWidth(390),
            height: getProportionateScreenHeight(844),
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: getProportionateScreenWidth(45),
          right: getProportionateScreenWidth(45),
          top: getProportionateScreenHeight(264),
          child: CircleContainer(
              height: getProportionateScreenHeight(300),
              width: getProportionateScreenWidth(300),
              color: AppColors.blackColor,
              borderRadius: 300,
              child: Center(child: Image.asset(Assets.truck))),
        )
      ],
    ));
  }
}