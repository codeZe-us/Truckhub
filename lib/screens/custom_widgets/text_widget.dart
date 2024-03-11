import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart' show blackColor;
import 'package:truckhub/screens/utils/extensions.dart';

class GenericText extends StatelessWidget {
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final String text;
  final bool? noCenterAlign;

  const GenericText({
    super.key,
    this.color,
    this.noCenterAlign,
    required this.fontSize,
    required this.fontWeight,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text).decorateText(
      noCenterAlign: noCenterAlign,
      color: color ?? blackColor,
      fontWeight: fontWeight,
      fontSize: fontSize
    );
  }
}