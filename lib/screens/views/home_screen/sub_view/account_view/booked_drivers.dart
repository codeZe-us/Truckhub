import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/custom_card_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class BookedDriversScreen extends StatelessWidget {
  const BookedDriversScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericAnnotatedRegion(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const FaIcon(FontAwesomeIcons.arrowLeftLong),
            onPressed: (){
              //Implement the functionality of this IconButton here
            },
          ),
          title:  const GenericText(
            text: bookedString,
            fontSize: fontSize3half,
            fontWeight: fontWeight4,
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              const Gap(10),
              const GenericText(
                noCenterAlign: true,
                text: todayString,
                fontSize: fontSize3,
                fontWeight: fontWeight3,
              ),
              const Gap(10),
              GenericCardWidgetWithTrailingText(
                onTap: (){},
                title: driver1NameString,
                subtitle: ogigeMarketString
              ),
              GenericCardWidgetWithTrailingText(
                onTap: (){},
                title: driver2NameString,
                subtitle: enuguRoadString
              ),
              GenericCardWidgetWithTrailingText(
                onTap: (){},
                title: driver3NameString,
                subtitle: ogigeMarketString
              )
            ],
          ),
        ),
      )
    );
  }
}