import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';

class GenericCircleAvatar extends StatelessWidget {
  final Widget child;

  const GenericCircleAvatar({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(child: child),
    );
  }
}