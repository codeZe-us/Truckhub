import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';

import 'package:truckhub/screens/views/pickup_location_destination/autocomplete_widget.dart';

class PickupLocationAndDestinationSearchScreen extends StatelessWidget {
  const PickupLocationAndDestinationSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options = [
    'Daniel',
    'Emmanuel',
    'James',
    'Ginika',
    'Tesimi',
    'David'
  ];

    return GenericAnnotatedRegion(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(60),
              GenericAutoCompleteWidget(
                leadingWidget: IconButton(
                  onPressed: (){/*Implement the functionily of the icon here*/},
                  icon: const FaIcon(FontAwesomeIcons.arrowLeftLong,)
                ),
                options: options, //Provide the options for the autocomplete
                hintText:pickupLocationString
              ),
              const Gap(10),
              GenericAutoCompleteWidget(
                options: options, //Provide the options for the autocomplete
                hintText: destinationString
              )
            ],
          ),
        )
      ),
    );
  }
}