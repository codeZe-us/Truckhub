import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/custom_widgets/textbutton_widget.dart';
import 'package:truckhub/screens/utils/extensions.dart';


Future<T?> showOfflineDialog<T>({
  required BuildContext context,
}) => showDialog<T>(
  context: context,
  builder: (_) => AlertDialog(
    titlePadding: const EdgeInsets.only(top: 15),
    title: const Text(youAreOfflineString).decorateText(
      color: blackColor,
      fontWeight: fontWeight4, 
      fontSize: fontSize3, 
    ),
    contentPadding: const EdgeInsets.only(bottom: 10),
    content: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const GenericText(
          text: connectToInternetString,
          color: blackColor,
          fontSize: fontSize3, 
          fontWeight: fontWeight4
        ),
        const Gap(10),
        GenericTextButton(
          onTap: () => Navigator.pop(context),
          title: okString,
          fontSize: fontSize3,
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