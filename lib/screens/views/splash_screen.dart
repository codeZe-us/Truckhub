import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/circle_avatar_widget.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GenericAnnotatedRegion(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundPng),
              fit: BoxFit.cover
            )
          ),
          child: Center(
            child: GenericCircleAvatar(
              radius: 300,
              child: Image.asset(truckHubLogoPng)
            )
          )
        )
      )
    );
  }
}