import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/dimension.dart';


Text customTextPoppinsCenter({
  required String inputText,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text(
    inputText,
    textAlign: TextAlign.center,
    style: GoogleFonts.poppins(
        fontSize: getProportionateScreenWidth(fontSize),
        fontWeight: weight,
        color: colorName),
  );
}

Text customTextInter({
  required String inputText,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text(
    inputText,
    style: GoogleFonts.inter(
        fontSize: getProportionateScreenWidth(fontSize),
        fontWeight: weight,
        color: colorName),
  );
}

Text customTextPppinsSpacing({
  required String inputText,
  required double letterSpacing,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text(
    inputText,
    style: GoogleFonts.poppins(
        fontSize: getProportionateScreenWidth(fontSize),
        fontWeight: weight,
        color: colorName),
  );
}

Text customTextPoppinsTextRich({
  required String inputText,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text.rich(TextSpan(children: [
    TextSpan(
      text: inputText,
      style: GoogleFonts.poppins(
          fontSize: getProportionateScreenWidth(fontSize),
          fontWeight: weight,
          color: colorName),
    )
  ]));
}
