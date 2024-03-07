import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';


class CountDownTimerView extends StatelessWidget {
  const CountDownTimerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            //Implement the resend code functionality here.
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: blackColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20)
            ),
            child: const GenericText(
              text: resendCodeString,
              color: whiteColor,
              fontSize: fontSize3,
              fontWeight: fontWeight5,
            ),
          ),
        ),
        const Gap(10),
        const GenericText(
          color: blackColor,
          fontSize: fontSize3,
          fontWeight: fontWeight4,
          text: inString
        ),
        const Gap(5),
        StreamBuilder(
          stream: Stream.periodic(
            const Duration(seconds: 1), 
            (time) => 30 - time
          ).take(31), 
          builder: (_, snapshot) => GenericText(
            color: blackColor,
            fontSize: fontSize3,
            fontWeight: fontWeight8,
            text: snapshot.data.toString() + sString
          )
        ),
      ],
    );
  }
}