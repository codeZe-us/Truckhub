import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/custom_card_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

Future showListOfAvailableDrivers({
  required BuildContext context,
}) async{
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10)
        )
      ),
      content: ListView(
        children: [
          GenericCardWidgetWithLeadingSvg(
            onTap: (){},
            title: price: price, subtitle: subtitle)
        ],
      ),
      duration: const Duration(seconds: 4), 
      backgroundColor: greenColor
    )
  );
}