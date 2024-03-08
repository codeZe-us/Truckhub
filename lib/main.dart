import 'package:flutter/material.dart';
import 'package:truckhub/screens/views/confirm_phone_number/pincode_view.dart';
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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple
        ),
        useMaterial3: true,
      ),
      home: const WelcomeToTruckHubScreen()
    );
  }
}
