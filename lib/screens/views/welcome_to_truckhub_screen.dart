import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/elevated_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/rich_text_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';

class WelcomeToTruckHubScreen extends StatefulWidget {
  const WelcomeToTruckHubScreen({super.key});

  @override
  State<WelcomeToTruckHubScreen> createState() => _WelcomeToTruckHubScreenState();
}

class _WelcomeToTruckHubScreenState extends State<WelcomeToTruckHubScreen> {
  late TextEditingController phoneNumberController,
  passwordController, nameController;
  bool isVisible = false;

  @override 
  void initState(){
    super.initState();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
  }

  @override 
  void dispose(){
    phoneNumberController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GenericAnnotatedRegion(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          leading: IconButton(
            icon: const FaIcon(FontAwesomeIcons.arrowLeftLong),
            onPressed: (){
              //Implement the functionality of this IconButton here
            },
          )
        ),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: GenericText(
                  color: blackColor,
                  fontSize: fontSize4half,
                  fontWeight: fontWeight7,
                  text: welcomeToTruckHubString,
                ),
              ),
              const Gap(5),
              const Align(
                alignment: Alignment.centerLeft,
                child: GenericText(
                  color: blackColor,
                  fontSize: fontSize3half,
                  fontWeight: fontWeight5,
                  text: createAnAccountString,
                ),
              ),
              const Gap(15),
              GenericTextField(
                hintText: nameString,
                controller: nameController,
              ),
              const Gap(15),
              GenericTextField(
                hintText: phoneNumberString,
                controller: phoneNumberController,
              ),
              const Gap(20),
              GenericTextField(
                obscureText: !isVisible,
                suffixIcon: IconButton(
                  onPressed: () => setState(() => isVisible = !isVisible),
                  icon: Icon(
                    isVisible ? Icons.visibility_off_rounded : Icons.visibility_rounded
                  )
                ),
                hintText: passwordString,
                controller: passwordController,
              ),
              const Gap(10),
              const Align(
                alignment: Alignment.centerLeft,
                child: GenericText(
                  color: blackColor,
                  fontSize: fontSize2half,
                  fontWeight: fontWeight4,
                  text: sixCharactersString,
                ),
              ),
              const Gap(40),
              GenericElevatedButton(
                onPressed: () async{
                  //Implement the Create Account funtionality here
                },
                title: createAccountString
              ),
              const Gap(50),
              RichTextWidget(
                children: [
                  haveAccountString,
                  [
                    logInString,
                    greenColor,
                    (){/*Send the user to the login screen here*/},
                  ]
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}