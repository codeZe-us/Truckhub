import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/custom_card_widget.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

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
            GenericCardWidget(
              onTap: (){},
              title: bookedString
            ),
            GenericCardWidget(
              onTap: (){},
              title: reviewString
            ),
            GenericCardWidget(
              onTap: (){},
              title: termPrivacyString
            ),
            GestureDetector(
              onTap: (){},
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
              onTap: (){},
              child: const GenericText(
                color: greenColor,
                text: logOutString,
                fontSize: fontSize3half,
                fontWeight: fontWeight7,
              ),
            ),
          ],
        ),
      )
    );
  }
}