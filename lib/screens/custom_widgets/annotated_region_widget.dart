import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:truckhub/screens/constants/colors.dart';

class GenericAnnotatedRegion extends StatelessWidget {
  final Widget child;
  final bool? transparentStatusBar;

  const GenericAnnotatedRegion({
    super.key,
    required this.child,
    this.transparentStatusBar
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: blackColor,
        statusBarColor: transparentStatusBar ?? false ? transparentColor : whiteColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light
      ),
      child: child
    );
  }
}