import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';

class DynamicContainer extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool? addBorder;

  const DynamicContainer({
    super.key,
    required this.children,
    this.crossAxisAlignment,
    this.backgroundColor,
    this.padding,
    this.addBorder
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    return ClipRect(
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        constraints: BoxConstraints(
          maxHeight: screenHeight,
          minHeight: 0,
          minWidth: 0,
          maxWidth: screenWidth
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: addBorder ?? false ?
            Border.all(
              color: blackColor,
              width: 0.5
            ) : null
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: children
          ),
        ),
      ),
    );
  }
}