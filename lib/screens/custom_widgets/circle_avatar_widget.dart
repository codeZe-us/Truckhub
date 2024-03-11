import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';

class GenericCircleAvatar extends StatelessWidget {
  final Widget child;
  final double radius;

  const GenericCircleAvatar({
    super.key,
    required this.child,
    required this.radius
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(radius)
      ),
      child: Center(child: child),
    );
  }
}