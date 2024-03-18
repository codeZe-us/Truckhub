import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truckhub/screens/constants/strings.dart';

class SvgFlut extends StatelessWidget {
  const SvgFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      firstSvg,
      fit: BoxFit.contain,
    );
  }
}