import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/circle_avatar_widget.dart';
import 'package:truckhub/screens/custom_widgets/elevated_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/icon_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';
import 'package:truckhub/screens/views/dialogs/snackbar_confirmation_dialog.dart';

class GetProfile extends HookWidget {
  const GetProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final addressController = useTextEditingController();
    final ninController = useTextEditingController();

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
            text: profileString,
            fontSize: fontSize3half,
            fontWeight: fontWeight4,
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Stack(
                children: [
                  Center(
                    child: GenericCircleAvatar(
                      radius: 100,
                      color: blackColor.withOpacity(0.2),
                      child: const SizedBox.shrink(),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: screenWidth/2.1,
                    child: GenericIconButton(
                      icon: const Icon(Icons.photo_camera_outlined,),
                      onPressed: (){},
                      color: greenColor.shade100,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  GenericIconButton(
                    icon: const Icon(Icons.create_outlined,),
                    onPressed: (){},
                  ),
                ],
              ),
              const Gap(30),
              GenericTextField(
                hintText: firstNameString,
                controller: firstNameController
              ),
              const Gap(15),
              GenericTextField(
                hintText: lastNameString,
                controller: lastNameController
              ),
              const Gap(15),
              GenericTextField(
                hintText: phoneString,
                controller: phoneNumberController
              ),
              const Gap(15),
              GenericTextField(
                hintText: addressString,
                controller: addressController
              ),
              const Gap(15),
              GenericTextField(
                hintText: ninString,
                controller: ninController,
                suffixIcon: GenericIconButton(
                  icon: const Icon(Icons.photo_camera_outlined),
                  onPressed: (){},
                ),
              ),
              const Gap(60),
              GenericElevatedButton(
                onPressed: (){
                  showConfirmationDialog(
                    context: context,
                    content: savedString
                  );
                },
                title: saveString
              )
            ],
          ),
        )
      )
    );
  }
}