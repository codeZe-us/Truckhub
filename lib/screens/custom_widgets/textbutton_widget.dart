import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;

  const GenericTextButton({
    super.key,
    required this.onPressed,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: GenericText(
        color: greenColor,
        fontSize: fontSize5,
        fontWeight: fontWeight4,
        text: title
      ),
    );
  }
}