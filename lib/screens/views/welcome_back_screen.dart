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
import 'package:truckhub/screens/custom_widgets/textbutton_widget.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';

class WelcomeBackScreen extends StatefulWidget {
  const WelcomeBackScreen({super.key});

  @override
  State<WelcomeBackScreen> createState() => _WelcomeBackScreenState();
}

class _WelcomeBackScreenState extends State<WelcomeBackScreen> {
  late TextEditingController phoneNumberController,
  passwordController;
  bool isVisible = false;

  @override 
  void initState(){
    super.initState();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override 
  void dispose(){
    phoneNumberController.dispose();
    passwordController.dispose();
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
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: GenericText(
                  color: blackColor,
                  fontSize: fontSize4half,
                  fontWeight: fontWeight7,
                  text: welcomeBackString,
                ),
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
              const Gap(5),
              Align(
                alignment: Alignment.centerLeft,
                child: GenericTextButton(
                  onTap: (){
                    //Implement the funtionality of this TextButton here
                  },
                  title: forgotPasswordString
                ),
              ),
              const Gap(40),
              GenericElevatedButton(
                onPressed: (){
                  //Implement the Log in funtionality here.
                },
                title: logInString
              ),
              const Gap(50),
              RichTextWidget(
                children: [
                  dontHaveAccountString,
                  [
                    createAnAccountString,
                    greenColor,
                    (){/*Send the user to the create account screen*/},
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