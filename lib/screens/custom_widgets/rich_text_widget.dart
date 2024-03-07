import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
                  style: TextStyle(
                    color: color
                  )
                );
              }
      
              return TextSpan(
                text: child as String
              );
            }
          ).toList()
        )
      ),
    );
  }
}
