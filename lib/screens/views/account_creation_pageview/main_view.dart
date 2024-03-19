import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/animated_container_widget.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/views/account_creation_pageview/sub_views/create_account_view.dart';
import 'package:truckhub/screens/views/confirm_phone_number/pincode_view.dart';
import 'package:truckhub/screens/views/welcome_back_screen.dart';

class AccountCreationPageView extends StatefulWidget {
  const AccountCreationPageView({super.key});

  @override
  State<AccountCreationPageView> createState() => _AccountCreationPageViewState();
}

class _AccountCreationPageViewState extends State<AccountCreationPageView> {
  late PageController controller;
  late TextEditingController phoneNumberController,
  passwordController;
  
  @override
  void initState(){
    controller = PageController(initialPage: 0);
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override 
  void dispose(){
    controller.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
          title: const GenericText(
            color: blackColor,
            fontSize: fontSize4half,
            fontWeight: fontWeight6,
            text: createAnAccountString,
          ),
        ),

        body: ListView(
          children: [
            const Gap(20),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GenericCircleAnimateContainer(numberString: '1'),
                  Expanded(
                    child: GenericLineAnimateContainer()
                  ),
                  GenericCircleAnimateContainer(numberString: '2'),
                  Expanded(
                    child: GenericLineAnimateContainer()
                  ),
                  GenericCircleAnimateContainer(numberString: '3')
                ],
              ),
            ),

            const Gap(20),
            Container(
              height: 500,
              child: PageView(
                controller: controller,
                children: [
                  CreateAccountSubPageView(
                    passwordController: passwordController,
                    phoneNumberController: phoneNumberController,
                  ),
                  ConfirmPhoneNumberScreen(),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}