import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/elevated_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/utils/extensions.dart';


Future<T?> showEnableLocationDialog<T>({
  required BuildContext context,
  required String title, 
  required String content,
  required String buttonTitle
}) => showDialog<T>(
  context: context,
  builder: (_) => AlertDialog(
    title: Center(
      child: Text(title).decorateText(
        color: blackColor,
        fontWeight: fontWeight6, 
        fontSize: fontSize4, 
      ),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        GenericText(
          text: content,
          color: blackColor,
          fontSize: fontSize3, 
          fontWeight: fontWeight3
        ),
        const Gap(20),
        GenericElevatedButton(
          onPressed: (){
            //Implement the enable location functionality here
          },
          title: buttonTitle,
          noMargin: true,
        )
      ],
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
    scrollable: true,
    backgroundColor: whiteColor 
  )
);