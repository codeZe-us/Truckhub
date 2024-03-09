import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/utils/extensions.dart';

class RichTextWidget extends StatelessWidget {
  final List<dynamic> children;

  const RichTextWidget({
    super.key,
    required this.children
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: children.map(
            (child) {
              if(child is List){
                final text = child.first as String;
                final color = child[1] as Color;
                final function = child.last as void Function();
      
                return TextSpan(
                  text: text,
                  recognizer: TapGestureRecognizer()..onTap = function,
                ).decorateTextSpan(
                  color: color,
                  fontWeight: fontWeight7,
                  fontSize: fontSize3
                );
              }
      
              return TextSpan(
                text: child as String
              ).decorateTextSpan(
                color: blackColor,
                fontWeight: fontWeight2,
                fontSize: fontSize3
              );
            }
          ).toList()
        )
      ),
    );
  }
}
