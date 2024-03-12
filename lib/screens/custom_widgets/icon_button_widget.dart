import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenericIconButton extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  final void Function() onPressed;

  const GenericIconButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: FaIcon(
        iconData,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(color)
      ),
    );
  }
}