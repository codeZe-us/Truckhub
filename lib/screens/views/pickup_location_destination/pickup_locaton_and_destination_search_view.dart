import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/views/pickup_location_destination/autocomplete_widget.dart';
import 'dart:developer' as marach show log;

class PickupLocationAndDestinationSearchScreen extends StatefulWidget {
  const PickupLocationAndDestinationSearchScreen({super.key});

  @override
  State<PickupLocationAndDestinationSearchScreen> createState() => _PickupLocationAndDestinationSearchScreenState();
}

class _PickupLocationAndDestinationSearchScreenState extends State<PickupLocationAndDestinationSearchScreen> {
  late ValueNotifier<bool> valueNotifier;
  late TextEditingController controller1, controller2;
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

  @override 
  void initState(){
    super.initState();
    valueNotifier = ValueNotifier<bool>(false);
    controller1 = TextEditingController();
    controller2 = TextEditingController();

    controller1.addListener(() { 
      if(controller1.text.isEmpty){
        valueNotifier.value = false;
      }
      else{
        valueNotifier.value = true;
      }
    });
  }

  @override 
  void dispose(){
    valueNotifier.dispose();
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return GenericAnnotatedRegion(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(60),
              ValueListenableBuilder(
                valueListenable: valueNotifier,
                builder: (_, value, __) {
                  marach.log(value.toString());
                  return GenericAutoCompleteWidget2(
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
                    hintText:pickupLocationString
                  );
                },
              ),

              const Gap(10),

              GenericAutoCompleteWidget2(
                controller: controller2,
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