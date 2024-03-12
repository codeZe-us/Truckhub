import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/utils/extensions.dart';
import 'package:truckhub/screens/views/confirm_phone_number/pincode_view.dart';
import 'package:truckhub/screens/views/home_screen/main_home_screen.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/driver_profile.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/get_profile.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/main_account_view.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/google_map_view.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/notifications/notification_view.dart';
import 'package:truckhub/screens/views/pickup_location_destination/pickup_locaton_and_destination_search_view.dart';
import 'package:truckhub/screens/views/welcome_back_screen.dart';
import 'package:truckhub/screens/views/welcome_to_truckhub_screen.dart';

import 'features/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TruckHub',
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStatePropertyAll(
            const TextStyle().decorateTextStyle(
              color: blackColor,
              fontWeight: fontWeight7,
              fontSize: fontSize2
            )
          ),
        ),

        colorScheme: ColorScheme.fromSeed(
          seedColor: whiteColor
        ),
        useMaterial3: true,
      ),
      home: const GetProfile()
    );
  }
}
