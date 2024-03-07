import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericTextButton extends StatelessWidget {
  final void Function() onTap;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String title;

  const GenericTextButton({
    super.key,
    required this.onTap,
    required this.title,
    this.fontSize,
    this.color,
    this.fontWeight
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GenericText(
        color: color ?? greenColor,
        fontSize: fontSize ?? fontSize10,
        fontWeight: fontWeight ?? fontWeight7,
        text: title
      ),
    );
  }
}