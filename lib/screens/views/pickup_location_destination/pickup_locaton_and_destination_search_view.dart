import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/views/pickup_location_destination/autocomplete_widget.dart';


class PickupLocationAndDestinationSearchScreen extends HookWidget {
  const PickupLocationAndDestinationSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      'Daniel',
      'Emmanuel',
      'James',
      'Ginika',
      'Tesimi',
      'David',
      'Jerome',
      'Damilola',
      'Badamosi'
    ];
    
    final controller1 = useTextEditingController();
    final controller2 = useTextEditingController();
    return GenericAnnotatedRegion(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const Gap(60),
              GenericAutoCompleteWidget(
                controller: controller1,
                leadingWidget: IconButton(
                  onPressed: (){/*Implement the functionalityy of the leadingIcon here*/},
                  icon: const FaIcon(FontAwesomeIcons.arrowLeftLong,)
                ),
                suffixIcon: IconButton(
                  onPressed: (){/*implement the functionality of the trailingIcon here*/},
                  icon: const FaIcon(FontAwesomeIcons.circleXmark)
                ),
                options: options, //Provide the options for the autocomplete
                hintText:pickupLocationString,
              ),

              const Gap(10),

              GenericAutoCompleteWidget(
                controller: controller2,
                suffixIcon: IconButton(
                  onPressed: (){/*implement the functionality of the trailingIcon here*/},
                  icon: const FaIcon(FontAwesomeIcons.circleXmark)
                ),
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