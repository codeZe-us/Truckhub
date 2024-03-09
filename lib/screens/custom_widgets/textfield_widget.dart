import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/utils/extensions.dart';

class GenericTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? showSuffixIcon;

  const GenericTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.showSuffixIcon
  });

  @override
  State<GenericTextField> createState() => _GenericTextFieldState();
}

class _GenericTextFieldState extends State<GenericTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: 1,
      autocorrect: true, 
      cursorColor: blackColor,
      obscureText: !isVisible ? true : false,             
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
        label: Text(widget.hintText),
        suffixIcon: widget.showSuffixIcon ?? false ? IconButton(
          onPressed: () => setState(() => isVisible = !isVisible),
          icon: Icon(
            isVisible ? Icons.visibility_off_rounded : Icons.visibility_rounded
          )
        ) : null
      ),
      style: const TextStyle().decorateTextStyle(
        color: blackColor.withOpacity(0.5),
        fontWeight: fontWeight4,
        fontSize: fontSize3
      )
    );
  }
}