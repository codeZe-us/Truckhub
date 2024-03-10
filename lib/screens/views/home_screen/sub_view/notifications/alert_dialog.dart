import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/custom_widgets/textbutton_widget.dart';


Future<bool?> showCancelYouRideDialog<bool>({
  required BuildContext context,
}) => showDialog(
  context: context,
  builder: (_) => AlertDialog(
    titlePadding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
    actionsAlignment: MainAxisAlignment.spaceAround,
    title: const Center(
      child: GenericText(
        text: cancelYouRideString,
        color: blackColor,
        fontWeight: fontWeight6, 
        fontSize: fontSize3, 
      ),
    ), 
    actions: [
      GenericTextButton(
        fontSize: fontSize3,
        fontWeight: fontWeight7,
        onTap: (){},
        title: noString
      ),
      GenericTextButton(
        fontSize: fontSize3,
        fontWeight: fontWeight7,
        onTap: (){},
        title: yesString
      )
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7)
    ),
    scrollable: true,
    backgroundColor: whiteColor 
  )
);