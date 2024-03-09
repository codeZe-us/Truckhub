import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';
import 'package:truckhub/screens/utils/extensions.dart';

class PickupLocationAndDestinationSearchScreen extends StatefulWidget {
  const PickupLocationAndDestinationSearchScreen({super.key});

  @override
  State<PickupLocationAndDestinationSearchScreen> createState() => _PickupLocation();
}

class _PickupLocation extends State<PickupLocationAndDestinationSearchScreen> {
  late TextEditingController locationController,
  destinationController;

  List<String> options = [
    'Daniel',
    'Emmanuel',
    'James',
    'Ginika',
    'Tesimi',
    'David'
  ];

  @override 
  void initState(){
    super.initState();
    locationController = TextEditingController();
    destinationController = TextEditingController();
  }

  @override
  void dispose(){
    locationController.dispose();
    destinationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GenericAnnotatedRegion(
      transparentStatusBar: true,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(60),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  return options.where(
                    (option) => option.toLowerCase().contains(
                      textEditingValue.text.toLowerCase()
                    )
                  );
                },
                displayStringForOption: (selectedOption) => selectedOption,
                onSelected: (selectedOption){},
                initialValue: null,
                optionsViewBuilder: (context, onSelected, options){
                  return Container(
                    height: 500,
                    width: 600,
                    color: blackColor,
                    child: ListView(
                      children: options.map(
                        (option) => ListTile(
                          onTap: () => onSelected(option),
                          title: Text(option).decorateText(
                            color: blackColor,
                            fontWeight: fontWeight3,
                            fontSize: fontSize2
                          ),
                        )
                      ).toList(),
                    ),
                  );
                },
                fieldViewBuilder:(context, textEditingController, focusNode, onFieldSubmitted) {
                  return TextField(
                    controller: textEditingController,

                  );
                  // return GenericTextField(
                  //   hintText: 'Hello', 
                  //   controller: textEditingController
                  // );
                },
              ),
          
              const Gap(60),
              GenericTextField(
                leadingWidget: IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 25,
                  ),
                ),
                hintText: pickupLocationString,
                controller: locationController
              ),
              const Gap(10),
              GenericTextField(
                hintText: destinationString,
                controller: destinationController
              )
            ],
          ),
        )
      ),
    );
  }
}