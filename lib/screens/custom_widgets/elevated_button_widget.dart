import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final Color? color, 
  backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  const GenericElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor ?? blackColor
          ),
          side: const MaterialStatePropertyAll(
            BorderSide(
              width: 1, 
              strokeAlign: 1, 
              color: blackColor
            )
          )
        ),
        child: GenericText(
          color: color ?? whiteColor,
          fontSize: fontSize ?? fontSize3,
          fontWeight: fontWeight ?? fontWeight5,
          text: title
        )
      ),
    );
  }
}