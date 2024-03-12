import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/icon_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericCardWidget extends StatefulWidget {
  final void Function() onTap;
  final String title;
  final Widget? subtitle;

  const GenericCardWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.subtitle
  });

  @override
  State<GenericCardWidget> createState() => _GenericCardWidgetState();
}

class _GenericCardWidgetState extends State<GenericCardWidget> {
  bool showHiddenPart = false;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        trailing: GenericIconButton(
          iconData: showHiddenPart ? Icons.keyboard_arrow_up_sharp
          : Icons.keyboard_arrow_down_outlined,
          onPressed: (){
            setState(() => showHiddenPart = !showHiddenPart);
            widget.onTap;
          }
        ),
        title: GenericText(
          noCenterAlign: true,
          fontSize: fontSize3half,
          fontWeight: fontWeight7,
          text: widget.title
        ),
        subtitle: showHiddenPart ? widget.subtitle : null
      ),
    );
  }
}