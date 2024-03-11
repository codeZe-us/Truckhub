import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';

class GenericCardWidget extends StatefulWidget {
  final void Function()? onTap;
  final String title;

  const GenericCardWidget({
    super.key,
    required this.onTap,
    required this.title
  });

  @override
  State<GenericCardWidget> createState() => _GenericCardWidgetState();
}

class _GenericCardWidgetState extends State<GenericCardWidget> {
  bool changeIcon = false;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: (){
          setState(() => changeIcon = !changeIcon);
          widget.onTap;
        },
        trailing: Icon(
          changeIcon ? Icons.keyboard_arrow_right_sharp
          : Icons.keyboard_arrow_up_outlined
        ),
        title: GenericText(
          noCenterAlign: true,
          fontSize: fontSize3half,
          fontWeight: fontWeight7,
          text: widget.title
        ),
      ),
    );
  }
}