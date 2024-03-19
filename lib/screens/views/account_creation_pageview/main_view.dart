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
import 'package:truckhub/screens/views/account_creation_pageview/sub_views/confirm_phone_number_view.dart';
import 'package:truckhub/screens/views/account_creation_pageview/sub_views/create_account_view.dart';
import 'package:truckhub/screens/views/account_creation_pageview/sub_views/setup_account_view.dart';
import 'dart:developer' as marach show log;

class AccountCreationPageView extends StatefulWidget {
  const AccountCreationPageView({super.key});

  @override
  State<AccountCreationPageView> createState() => _AccountCreationPageViewState();
}

class _AccountCreationPageViewState extends State<AccountCreationPageView>{
  late ValueNotifier<int> valueNotifier;
  late PageController controller;
  late TextEditingController phoneNumberController,
  passwordController;
  
  @override
  void initState(){
    controller = PageController(initialPage: 0);
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    valueNotifier = ValueNotifier(0);
    super.initState();
  }

  @override 
  void dispose(){
    controller.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    valueNotifier.dispose();
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ValueListenableBuilder(
                valueListenable: valueNotifier,
                builder:(_, value, __) {
                  final inPage1 = value == 0;
                  final inPage2 = value == 1;
                  final inPage3 = value == 2;
                  

                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GenericCircleAnimateContainer(
                        numberString: '1',
                        borderColor: greenColor,
                        backgroundColor: inPage2 || inPage3 ? greenColor : whiteColor,
                        isMarked: inPage2 || inPage3 ? true : false
                      ),
                      const Expanded(
                        child: GenericLineAnimateContainer(
                          borderColor: greenColor,
                        )
                      ),
                      GenericCircleAnimateContainer(
                        numberString: '2',
                        borderColor: inPage2 || inPage3 ? greenColor : blackColor,
                        backgroundColor: inPage3 ? greenColor : whiteColor,
                        isMarked: inPage3 ? true : false
                      ),
                      Expanded(
                        child: GenericLineAnimateContainer(
                          borderColor: inPage3 ? greenColor : blackColor,
                        )
                      ),
                      GenericCircleAnimateContainer(
                        numberString: '3',
                        borderColor: inPage3 ? greenColor : blackColor,
                        isMarked: false
                      )
                    ],
                  );
                },
              ),
            ),

            const Gap(20),
            SizedBox(
              height: 400,
              child: PageView(
                controller: controller,
                onPageChanged: (pageIndex){
                  valueNotifier.value = pageIndex;
                  marach.log(valueNotifier.value.toString());
                },
                children: [
                  CreateAccountSubPageView(
                    passwordController: passwordController,
                    phoneNumberController: phoneNumberController,
                  ),
                  const ConfirmYourPhoneNumberSubPageView(),
                  const SetupYourAccountSubView()
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}