import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';

class GenericTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function()? onTap;
  final bool? showSuffixIcon;

  const GenericTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onTap,
    this.showSuffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: null, 
      autocorrect: true, 
      cursorColor: blackColor,              
      cursorWidth: 0.5,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: blackColor.withOpacity(0.5),
          fontSize: fontSize10,
          fontWeight: fontWeight3
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: blackColor
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: blackColor
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        label: Text(hintText),
        suffixIcon: showSuffixIcon ?? false ? IconButton(
          onPressed: onTap, 
          icon: const Icon(Icons.remove_red_eye)
        ) : null
      ),
      style: const TextStyle(
        fontSize: fontSize15,
        fontWeight: fontWeight4,
        decoration: TextDecoration.none
      ),
    );
  }
}