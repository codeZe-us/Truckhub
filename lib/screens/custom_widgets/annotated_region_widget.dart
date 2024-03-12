import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:truckhub/screens/constants/colors.dart';

class GenericAnnotatedRegion extends StatelessWidget {
  final Widget child;
  final Color? color;

  const GenericAnnotatedRegion({
    super.key,
    required this.child,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: blackColor,
        statusBarColor: color ?? transparentColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light
      ),
      child: child
    );
  }
}