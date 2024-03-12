import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/circle_avatar_widget.dart';
import 'package:truckhub/screens/custom_widgets/elevated_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/views/dialogs/yes_or_no_dialog.dart';
import 'package:truckhub/screens/views/dialogs/snackbar_confirmation_dialog.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

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
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              const GenericText(
                color: blackColor, 
                fontSize: fontSize2,
                fontWeight: fontWeight4,
                text: todayString
              ),
              const Gap(5),
              Card(
                color: whiteColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 0.2,
                    color: blackColor.withOpacity(0.5),
                  )
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.all(5),
                  dense: true,
                  minLeadingWidth: 0,
                  leading: GenericCircleAvatar(
                    radius: 40,
                    child: FaIcon(Icons.check, color: whiteColor,),
                  ),
                  title: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GenericText(
                        fontSize: fontSize3,
                        fontWeight: fontWeight7,
                        text: successfullBookString
                      ),
                      GenericText(
                        fontSize: fontSize2,
                        fontWeight: fontWeight3,
                        text: thankYouForBooking
                      ),
                    ],
                  ),
                ),
              ),

              Card(
                color: whiteColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 0.2,
                    color: blackColor.withOpacity(0.5),
                  )
                ),
                child: Column(
                  children: [
                    const ListTile(
                      contentPadding: EdgeInsets.all(5),
                      dense: true,
                      minLeadingWidth: 0,
                      leading: GenericCircleAvatar(
                        radius: 40,
                        child: FaIcon(
                          FontAwesomeIcons.truckPickup,
                          color: whiteColor,
                        ),
                      ),
                      title: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GenericText(
                            fontSize: fontSize3,
                            fontWeight: fontWeight7,
                            text: riderString
                          ),
                          GenericText(
                            fontSize: fontSize2,
                            fontWeight: fontWeight3,
                            text: ifeanyiString //This has to be customized to the name of a driver
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GenericElevatedButton(
                              noMargin: true,
                              backgroundColor: whiteColor,
                              color: blackColor,
                              onPressed: (){
                                showYesOrNoAlertDialog(
                                  context: context,
                                  title: cancelYourRideString
                                );
                              },
                              title: cancelString
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            flex: 1,
                            child: GenericElevatedButton(
                              noMargin: true,
                              onPressed: (){
                                showConfirmationDialog(
                                  context: context,
                                  content: continueString
                                );
                              },
                              title: continueString
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Card(
                color: whiteColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 0.2,
                    color: blackColor.withOpacity(0.5),
                  )
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.all(5),
                  dense: true,
                  minLeadingWidth: 0,
                  leading: GenericCircleAvatar(
                    radius: 40,
                    child: FaIcon(
                      FontAwesomeIcons.star, 
                      color: whiteColor,
                    ),
                  ),
                  title: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GenericText(
                        fontSize: fontSize3,
                        fontWeight: fontWeight7,
                        text: discountString
                      ),
                      GenericText(
                        fontSize: fontSize2,
                        fontWeight: fontWeight3,
                        text: thankYouForBooking
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}