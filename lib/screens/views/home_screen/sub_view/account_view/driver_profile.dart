import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/circle_avatar_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class DriversProfileView extends StatelessWidget {
  const DriversProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.arrowLeftLong),
          onPressed: (){
            //Implement the functionality of this IconButton here
          },
        ),
        title: const GenericText(
          text: driverProfileString,
          fontSize: fontSize3,
          fontWeight: fontWeight5,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const GenericCircleAvatar(
                  radius: 70,
                  child: SizedBox.shrink()
                ),
                const Gap(10),
                const GenericText(
                  text: driverNameString,
                  fontSize: fontSize3,
                  fontWeight: fontWeight6,
                ),
                const Gap(5),
                const Wrap(
                  spacing: 10,
                  children: [
                    FaIcon(Icons.location_on_outlined,),
                    GenericText(
                      text: driverLocationString,
                      fontSize: fontSize3,
                      fontWeight: fontWeight3,
                    )
                  ],
                ),
                const Gap(5),
                const GenericText(
                  text: driverPhone,
                  fontSize: fontSize3,
                  fontWeight: fontWeight3,
                ),
                
                const Gap(40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GenericText(
                          text: vehicleDetailsString,
                          fontSize: fontSize3half,
                          fontWeight: fontWeight6,
                        ),
                        Gap(5),
                        GenericText(
                          text: truckDetailsString,
                          fontSize: fontSize3,
                          fontWeight: fontWeight3,
                        ),
                         GenericText(
                          text: truckNumberString,
                          fontSize: fontSize3,
                          fontWeight: fontWeight3,
                        ),
                        Gap(20),
                        GenericText(
                          text: driverReviewString,
                          fontSize: fontSize3half,
                          fontWeight: fontWeight6,
                        ),
                        Gap(5),
                        GenericText(
                          text: noReviewString,
                          fontSize: fontSize3,
                          fontWeight: fontWeight3,
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const FaIcon(Icons.call_outlined)
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}