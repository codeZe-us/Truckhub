import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/utils/extensions.dart';

class GenericTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;
  final Widget? leadingWidget,
  suffixIcon;
  final FocusNode? focusNode;

  const GenericTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText,
    this.leadingWidget,
    this.suffixIcon,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 1,
      focusNode: focusNode,
      // autocorrect: true, 
      cursorColor: blackColor,
      obscureText: obscureText ?? false ? true : false,             
      cursorWidth: 1,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        isDense: true,
        labelStyle: const TextStyle().decorateTextStyle(
          color: blackColor.withOpacity(0.5),
          fontWeight: fontWeight4,
          fontSize: fontSize3
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: greenColor
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: blackColor
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        label: Text(hintText),
        suffixIcon: suffixIcon,
        prefixIcon: leadingWidget ?? const SizedBox.shrink(),
      ),
      style: const TextStyle().decorateTextStyle(
        color: blackColor.withOpacity(0.5),
        fontWeight: fontWeight4,
        fontSize: fontSize3,
      ),
    );
  }
}