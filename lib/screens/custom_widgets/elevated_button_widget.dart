import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const GenericElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.color,
    this.fontSize,
    this.fontWeight
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: GenericText(
        color: color ?? whiteColor,
        fontSize: fontSize ?? fontSize15,
        fontWeight: fontWeight ?? fontWeight4,
        text: title
      )
    );
  }
}