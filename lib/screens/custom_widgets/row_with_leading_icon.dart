import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';



class RowWithLeadingIconWidget extends StatelessWidget {
  final void Function() onTap;
  final String title;

  const RowWithLeadingIconWidget({
    super.key,
    required this.onTap,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> notifier = ValueNotifier<bool>(true);
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        GenericText(
          text: title,
          fontSize: fontSize3half,
          fontWeight: fontWeight7,
          noCenterAlign: true,
        ),
        ValueListenableBuilder(
          valueListenable: notifier,
          builder:(_, value, __) {
            return IconButton(
              onPressed: (){
                notifier.value = !notifier.value;
                onTap;
              },
              icon: Icon(
                value ? Icons.keyboard_arrow_right_outlined : Icons.keyboard_arrow_left_outlined
              )  
            );
          },
        )
      ],
    );
  }
}