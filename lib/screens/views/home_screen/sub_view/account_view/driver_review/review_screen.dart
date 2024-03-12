import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/driver_review/review_subtitle.dart';

class DriverReviewScreen extends StatefulWidget {
  const DriverReviewScreen({super.key});

  @override
  State<DriverReviewScreen> createState() => _DriverReviewScreenState();
}

class _DriverReviewScreenState extends State<DriverReviewScreen> {
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
            text: reviewString,
            fontSize: fontSize3half,
            fontWeight: fontWeight4,
          ),
        ),
        
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: GenericText(
                  text: rideWithDriverString,
                  fontSize: fontSize3,
                  fontWeight: fontWeight3,
                  noCenterAlign: true,
                ),
              ),
              Gap(10),
              DriverReviewSubtitle()
            ]
          ),
        )
      ),
    );
  }
}