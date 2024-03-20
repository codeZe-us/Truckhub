import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericCircleAnimateContainer extends StatelessWidget {
  final String numberString;
  final Color? borderColor,
  backgroundColor;
  final bool isMarked;

  const GenericCircleAnimateContainer({
    super.key,
    required this.numberString,
    this.backgroundColor,
    this.borderColor,
    required this.isMarked
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(
          color: borderColor ?? blackColor,
          width: 1
        )
      ),
      child: Visibility(
        visible: isMarked,
        replacement: GenericText(
          fontSize: fontSize4,
          fontWeight: fontWeight4,
          text: numberString
        ),
        child: const Icon(Icons.check, color: whiteColor),
      ),
    );
  }
}





class GenericLineAnimateContainer extends StatelessWidget {
  final Color? borderColor;

  const GenericLineAnimateContainer({
    super.key,
    this.borderColor
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      height: 1,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: borderColor,
        border: Border.all(
          color: borderColor ?? blackColor,
          width: 1
        )
      ),
      child: const GenericText(
        fontSize: fontSize4,
        fontWeight: fontWeight4,
        text: horizontalLineString
      ),
    );
  }
}