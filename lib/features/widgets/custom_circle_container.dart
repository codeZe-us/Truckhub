import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.child,
    required this.borderRadius,
  }) : super(key: key);

  final double height;
  final double width;
  final Color color;
  final Widget child;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
