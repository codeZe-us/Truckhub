import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/custom_card_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

Future showListOfAvailableDrivers({
  required BuildContext context,
}) async{
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20)
        )
      ),
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const GenericText(
              fontSize: fontSize2half,
              fontWeight: fontWeight5,
              text: listOfDriversString
            ),
            GenericCardWidgetWithLeadingSvg(
              onTap: (){},
              title: driver1NameString,
              price: '500',
              subtitle: '7000'
            )
          ],
        ),
      ),
      duration: const Duration(days: 1), 
      backgroundColor: whiteColor
    )
  );
}


Future<void> showA({
  required BuildContext context
}) => showModalBottomSheet<void>(
    backgroundColor: whiteColor,
    context: context,
    builder:(context) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const Gap(10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GenericText(
                  fontSize: fontSize3half,
                  fontWeight: fontWeight6,
                  text: listOfDriversString
                ),
              ),
            ),
            const Gap(10),
            GenericCardWidgetWithLeadingSvg(
              onTap: (){},
              title: driver1NameString,
              price: '500',
              subtitle: '7000'
            ),
            GenericCardWidgetWithLeadingSvg(
              onTap: (){},
              title: driver1NameString,
              price: '500',
              subtitle: '7000'
            ),
            GenericCardWidgetWithLeadingSvg(
              onTap: (){},
              title: driver1NameString,
              price: '500',
              subtitle: '7000'
            ),
          ],
        ),
      );
    },
  );