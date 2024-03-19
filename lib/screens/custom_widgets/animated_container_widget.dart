import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericCircleAnimateContainer extends StatelessWidget {
  final String numberString;
  final Color? color;

  const GenericCircleAnimateContainer({
    super.key,
    required this.numberString,
    this.color
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
        color: color,
        border: Border.all(
          color: color ?? blackColor,
          width: 1
        )
      ),
      child: GenericText(
        fontSize: fontSize4,
        fontWeight: fontWeight4,
        text: numberString
      ),
    );
  }
}





class GenericLineAnimateContainer extends StatelessWidget {
  final Color? color;

  const GenericLineAnimateContainer({
    super.key,
    this.color
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
        //color: greenColor,
        border: Border.all(
          color: color ?? blackColor,
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