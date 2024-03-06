import 'package:flutter/material.dart';

class GenericText extends StatelessWidget {
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String text;

  const GenericText({
    super.key,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'sans-serif',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      softWrap: true,
    );
  }
}