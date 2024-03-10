import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

Future showConfirmationDialog({
  required BuildContext context
}) async{
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      behavior: SnackBarBehavior.floating, 
      margin: EdgeInsets.fromLTRB(20, 0, 20, 200),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        )
      ),
      content: GenericText(
        fontSize: fontSize3,
        fontWeight: fontWeight7,
        text: continuedString
      ),
      duration: Duration(seconds: 4), 
      backgroundColor: greenColor
    )
  );
}