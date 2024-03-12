import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/dynamic_container_widget.dart';
import 'package:truckhub/screens/custom_widgets/icon_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';

class DriverReviewSubtitle extends StatefulWidget {
  const DriverReviewSubtitle({super.key});

  @override
  State<DriverReviewSubtitle> createState() => _DriverReviewSubtitleState();
}

class _DriverReviewSubtitleState extends State<DriverReviewSubtitle> {
  late TextEditingController experienceController, nameController;
  bool showHiddenPart = false;

  @override 
  void initState(){
    super.initState();
    experienceController = TextEditingController();
    nameController = TextEditingController();
  }

  @override 
  void dispose(){
    experienceController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return DynamicContainer(
      addBorder: showHiddenPart ? false : true,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GenericText(
              noCenterAlign: true,
              fontSize: fontSize3half,
              fontWeight: fontWeight7,
              text: driverNameString.toLowerCase(),
            ),
            GenericIconButton(
              iconData: showHiddenPart ? Icons.keyboard_arrow_up_sharp
              : Icons.keyboard_arrow_down_outlined,
              onPressed: () => setState(() => showHiddenPart = !showHiddenPart)
            ),
          ],
        ),

        Visibility(
          visible: showHiddenPart,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              const GenericText(
                text: rateString,
                fontSize: fontSize3,
                fontWeight: fontWeight6,
                noCenterAlign: true,
              ),
              const Gap(5),
              RatingBar(
                onRatingUpdate: (value){},
                ratingWidget: RatingWidget(
                  full: FaIcon(Icons.star_rounded, color: shadedYellow),
                  half: const FaIcon(Icons.star_outline),
                  empty: const FaIcon(Icons.star_outline_rounded),
                ),
              ),
              const Gap(10),
              const GenericText(
                text: reviewString,
                fontSize: fontSize3,
                fontWeight: fontWeight6,
                noCenterAlign: true,
              ),
              const Gap(10),
              GenericTextField2(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 100),
                hintText: userExperienceString,
                controller: experienceController
              ),
              const Gap(40),
              const GenericText(
                text: yourNameString,
                fontSize: fontSize3,
                fontWeight: fontWeight6,
                noCenterAlign: true,
              ),
              const Gap(10),
              GenericTextField2(
                padding: const EdgeInsets.all(10),
                hintText: nameString,
                controller: nameController
              )
            ],
          ),
        ),
      ],
    );
  }
}