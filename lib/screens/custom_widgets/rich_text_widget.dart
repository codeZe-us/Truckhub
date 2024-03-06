import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/strings.dart';

class RichTextWidget extends StatelessWidget {

  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: dontHaveAccountString
          ),
          TextSpan(
            text: createAnAccountString
          )
        ]
      )
    );
  }
}
