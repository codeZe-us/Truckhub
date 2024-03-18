import 'package:flutter/material.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/utils/extensions.dart';
import 'package:truckhub/screens/views/confirm_phone_number/pincode_view.dart';
import 'package:truckhub/screens/views/home_screen/main_home_screen.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/booked_drivers.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/driver_profile.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/driver_review/review_screen.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/get_profile.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view/main_account_view.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/google_map_view.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/notifications/notification_view.dart';
import 'package:truckhub/screens/views/landing_page_screen.dart';
import 'package:truckhub/screens/views/pickup_location_destination/pickup_locaton_and_destination_search_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          colorScheme: ColorScheme.fromSeed(seedColor: whiteColor),
          useMaterial3: true,
        ),
        home: const GoogleMapView()
      );
  }
}
