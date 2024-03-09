import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

List<NavigationDestination> navDestinations = const [
  NavigationDestination(
    icon: FaIcon(
      Icons.home_outlined,
      color: blackColor,
    ),
    label: homeString,
    selectedIcon: FaIcon(
      Icons.home_filled,
      color: greenColor,
    ),
  ),
  NavigationDestination(
    icon: FaIcon(
      Icons.notifications_outlined,
      color: blackColor,
    ),
    label: notificationString,
    selectedIcon: FaIcon(
      Icons.notifications,
      color: greenColor,
    ),
  ),
  NavigationDestination(
    icon: FaIcon(
      Icons.person_outlined,
      color: blackColor,
    ),
    label: accountsString,
    selectedIcon: FaIcon(
      Icons.person,
      color: greenColor,
    ),
  )
];