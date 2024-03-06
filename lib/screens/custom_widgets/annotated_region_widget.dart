import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:truckhub/screens/constants/colors.dart';

class GenericAnnotatedRegion extends StatelessWidget {
  final Widget child;

  const GenericAnnotatedRegion({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: blackColor,
        statusBarColor: whiteColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light
      ),
      child: child
    );
  }
}