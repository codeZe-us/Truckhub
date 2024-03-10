import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';
import 'package:truckhub/screens/utils/extensions.dart';

class GenericAutoCompleteWidget extends StatelessWidget {
  final List<String> options;
  final String hintText;
  final Widget? leadingWidget, 
  suffixIcon;

  const GenericAutoCompleteWidget({
    super.key,
    required this.options,
    required this.hintText,
    this.leadingWidget,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if(textEditingValue.text.isEmpty){
          return const Iterable.empty();
        }
        else{
          final displayedOptions = options.where(
            (option) => option.toLowerCase().contains(
              textEditingValue.text.toLowerCase()
            )
          );
          return displayedOptions;
        }
      },
      displayStringForOption: (selectedOption) => selectedOption,
      onSelected: (selectedOption){},
      initialValue: null,
      optionsViewBuilder: (context, onSelected, options){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: options.map(
            (option) => GestureDetector(
              onTap: () => onSelected(option),
              child: Text(option).decorateText(
                color: blackColor,
                fontWeight: fontWeight3,
                fontSize: fontSize3
              ),
            )
          ).toList(),
        );
      },
      fieldViewBuilder:(context, textEditingController, focusNode, onFieldSubmitted) {
        return GenericTextField(
          suffixIcon: suffixIcon,
          leadingWidget: leadingWidget,
          hintText: hintText,
          controller: textEditingController,
          focusNode: focusNode,
        );
      },
    );
  }
}