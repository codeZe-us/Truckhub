import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/elevated_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/views/confirm_phone_number/pincodetextfield.dart';
import 'package:truckhub/screens/views/confirm_phone_number/timer.dart';

class ConfirmPhoneNumberScreen extends StatelessWidget {
  const ConfirmPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericAnnotatedRegion(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: (){
              //Implement the functionality of this IconButton here
            },
          )
        ),

        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const GenericText(
                  color: blackColor,
                  fontSize: fontSize4,
                  fontWeight: fontWeight6,
                  text: confirmYourPhoneNumberString
                ),
                const Gap(5),
                const GenericText(
                  color: blackColor,
                  fontSize: fontSize3,
                  fontWeight: fontWeight3,
                  text: codeSentToYouString
                ),
                const Gap(20),
                const PinCodeFields(),
                const Gap(40),
                GenericElevatedButton(
                  onPressed: (){
                    //Implement the confirm functionality here.
                  },
                  fontWeight: fontWeight7,
                  title: confirmString
                ), 
                const Gap(50),
                const CountDownTimerView()
              ]
            )
          ),
        )
      )
    );
  }
}