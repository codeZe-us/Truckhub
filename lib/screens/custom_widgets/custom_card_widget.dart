import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/icon_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericCardWidgetWithTrailingIcon extends StatefulWidget {
  final void Function() onTap;
  final String title;
  // final Widget? subtitle;

  const GenericCardWidgetWithTrailingIcon({
    super.key,
    required this.onTap,
    required this.title,
    //this.subtitle,
  });

  @override
  State<GenericCardWidgetWithTrailingIcon> createState() => _GenericCardWidgetWithTrailingIconState();
}

class _GenericCardWidgetWithTrailingIconState extends State<GenericCardWidgetWithTrailingIcon> {
  bool showHiddenPart = false;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        trailing: GenericIconButton(
          icon: Visibility(
            visible: showHiddenPart,
            replacement: const Icon(Icons.keyboard_arrow_left_outlined),
            child: const Icon(Icons.keyboard_arrow_right_outlined)
          ),
          onPressed: (){
            setState(() => showHiddenPart = !showHiddenPart);
            widget.onTap;
          },
        ),
        title: GenericText(
          noCenterAlign: true,
          fontSize: fontSize3half,
          fontWeight: fontWeight7,
          text: widget.title
        ),
        //subtitle: widget.subtitle,
      ),
    );
  }
}





class GenericCardWidgetWithTrailingText extends StatefulWidget {
  final void Function() onTap;
  final String title;
  final String subtitle;

  const GenericCardWidgetWithTrailingText({
    super.key,
    required this.onTap,
    required this.title,
    required this.subtitle,
  });

  @override
  State<GenericCardWidgetWithTrailingText> createState() => _GenericCardWidgetWithTrailingTextState();
}

class _GenericCardWidgetWithTrailingTextState extends State<GenericCardWidgetWithTrailingText> {
  bool isBooked = true;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        trailing: GenericIconButton(
          icon: Visibility(
            visible: isBooked,
            replacement: const GenericText(
              color: redColor,
              noCenterAlign: true,
              fontSize: fontSize3,
              fontWeight: fontWeight4,
              text: cancelledString
            ),
            child: const GenericText(
              color: greenColor,
              noCenterAlign: true,
              fontSize: fontSize3,
              fontWeight: fontWeight4,
              text: doneString
            ),
          ),
          onPressed: (){
            setState(() => isBooked = !isBooked);
            widget.onTap;
          },
        ),
        title: GenericText(
          noCenterAlign: true,
          fontSize: fontSize3half,
          fontWeight: fontWeight7,
          text: widget.title
        ),
        subtitle: GenericText(
          noCenterAlign: true,
          fontSize: fontSize2half,
          fontWeight: fontWeight3,
          text: widget.subtitle
        ),
      ),
    );
  }
}