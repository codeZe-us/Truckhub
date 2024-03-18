import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/elevated_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/views/modal_bottom_sheet_view.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GenericAnnotatedRegion(
      changeStatusBarIconBrightness: true,
      child: Scaffold(
        body: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.zero,
          width: screenWidth,
          height: screenHeight * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(personPng),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const GenericText(
                  noCenterAlign: true,
                  color: whiteColor,
                  fontSize: fontSize3,
                  fontWeight: fontWeight5,
                  text: introString,
                ),
                const Gap(10),
                DotsIndicator(
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    activeColor: whiteColor,
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    activeSize: const Size(20, 8),
                    color: blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: whiteColor.withAlpha(200),
                        width: 1
                      )
                    )
                  ),
                )
              ],
            ),
          ),
        ),

        bottomSheet: BottomSheet(
          constraints: BoxConstraints(
            maxHeight: screenHeight * 0.3,
            maxWidth: screenWidth
          ),
          elevation: 0,
          onClosing: (){},
          builder: (context){
            return SizedBox(
              width: screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Gap(30),
                    GenericElevatedButton(
                      onPressed: (){
                        showAwaitingDriversRespons(context: context);
                      },
                      title: findAtruckString
                    ),
                    const Gap(15),
                    GenericElevatedButton(
                      backgroundColor: whiteColor,
                      color: blackColor,
                      onPressed: (){},
                      title: earnAsDriverString
                    ),
                    const Gap(90)
                  ]
                ),
              ),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0)
          ),
        )
      )
    );
  }
}