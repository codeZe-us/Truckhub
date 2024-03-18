import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/custom_card_widget.dart';
import 'package:truckhub/screens/custom_widgets/elevated_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';


Future<void> showListOfAvailableDrivers({
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




Future<void> showViewProfileOrBookDriver({
  required BuildContext context
}) => showModalBottomSheet<void>(
    backgroundColor: whiteColor,
    context: context,
    builder:(context) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: ListView(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GenericText(
                      fontSize: fontSize3half,
                      fontWeight: fontWeight6,
                      text: driver1NameString
                    ),
                    GenericText(
                      fontSize: fontSize2half,
                      fontWeight: fontWeight3,
                      text: truckDetailsString
                    ),
                    Row(
                      children: [
                        GenericText(
                          fontSize: fontSize2half,
                          fontWeight: fontWeight3,
                          text: truckNumberString
                        ),
                        Gap(20),
                        Icon(Icons.place_outlined),
                        Gap(10),
                        GenericText(
                          fontSize: fontSize2half,
                          fontWeight: fontWeight3,
                          text: driverDistanceString
                        ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.call_outlined),
              ],
            ),
            const Gap(40),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: GenericElevatedButton(
                    color: blackColor,
                    backgroundColor: whiteColor,
                    noMargin: true,
                    onPressed: (){},
                    title: viewProfileString
                  ),
                ),
                const Gap(10),
                Expanded(
                  flex: 1,
                  child: GenericElevatedButton(
                    noMargin: true,
                    onPressed: (){},
                    title: bookString
                  ),
                )
              ],
            )
          ],
        ),
      );
    },
  );




  
Future<void> showAwaitingDriversRespons({
  required BuildContext context
}) => showModalBottomSheet<void>(
    backgroundColor: whiteColor,
    context: context,
    builder:(context) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
        child: ListView(
          children: [
            const Gap(20),
            const GenericText(
              fontSize: fontSize3,
              fontWeight: fontWeight3,
              text: waitingString
            ),
            const Gap(30),
            // Lottie.asset(
            //   'assets/lottie_animations/loading.json'
            // ),
            const Gap(30),
            GenericElevatedButton(
              color: blackColor,
              backgroundColor: whiteColor,
              noMargin: true,
              onPressed: (){},
              title: cancelString
            ),
          ],
        ),
      );
    },
  );