import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/dynamic_container_widget.dart';
import 'package:truckhub/screens/custom_widgets/icon_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/views/dialogs/yes_or_no_dialog.dart';
import 'package:truckhub/screens/custom_widgets/custom_card_widget.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  bool showHiddenPart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.arrowLeftLong),
          onPressed: (){
            //Implement the functionality of this IconButton here
          },
        ),
        title:  const GenericText(
          text: accountsString,
          fontSize: fontSize3half,
          fontWeight: fontWeight4,
        ),
        bottom: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            60
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const GenericText(
                      text: hiString,
                      fontSize: fontSize3half,
                      fontWeight: fontWeight4,
                    ),
                    IconButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(greenColor.withOpacity(0.5))
                      ),
                      onPressed: (){},
                      icon: const FaIcon(FontAwesomeIcons.user)
                    )
                  ],
                ),
              ),
              const Divider(
                color: blackColor,
                thickness: 0.3,
              )
            ],
          )
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            GenericCardWidgetWithTrailingIcon(
              onTap: (){},
              title: bookedString
            ),
            GenericCardWidgetWithTrailingIcon(
              onTap: (){},
              title: reviewString
            ),
            
            //During implementation of this project, the state of this widget can be managed, 
            //setState removed, and root widget converted to stateless
            DynamicContainer(
              padding: const EdgeInsets.fromLTRB(10, 5, 20, 5),
              addBorder: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const GenericText(
                      noCenterAlign: true,
                      text: termsPrivacyString,
                      fontSize: fontSize3half,
                      fontWeight: fontWeight7,
                    ),
                    GenericIconButton(
                      icon: Visibility(
                        visible: showHiddenPart,
                        replacement: const Icon(Icons.keyboard_arrow_up_outlined),
                        child: const Icon(Icons.keyboard_arrow_down_outlined)
                      ),
                      onPressed: (){
                        setState(() => showHiddenPart = !showHiddenPart);
                      }
                    ),
                  ],
                ),
                Visibility(
                  visible: showHiddenPart,
                  child: const GenericText(
                    noCenterAlign: true,
                    text: termsAndPolicyString,
                    fontSize: fontSize3,
                    fontWeight: fontWeight3,
                  ),
                ),
              ]
            ),
            const Gap(10),
            GestureDetector(
              onTap: () async{
                final result = await showYesOrNoAlertDialog(
                  context: context,
                  title: confirmDeleteAccountString
                );
              },
              child: const GenericText(
                noCenterAlign: true,
                color: redColor,
                text: deleteAccountString,
                fontSize: fontSize3half,
                fontWeight: fontWeight7,
              ),
            ),
            const Gap(100),
            GestureDetector(
              onTap: () async{
                final result = await showYesOrNoAlertDialog(
                  context: context,
                  title: confirmLogOutString
                );
              },
              child: const GenericText(
                color: greenColor,
                text: logOutString,
                fontSize: fontSize3half,
                fontWeight: fontWeight7,
              ),
            ),
          ],
        )
      )
    );
  }
}