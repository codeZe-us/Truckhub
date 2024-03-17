import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';


class GenericAutoCompleteWidget extends StatefulWidget {
  final List<String> options;
  final String hintText;
  final TextEditingController controller;
  final Widget? leadingWidget, suffixIcon;

  const GenericAutoCompleteWidget({
    super.key,
    required this.options,
    required this.hintText,
    required this.controller,
    this.leadingWidget,
    this.suffixIcon
  });

  @override
  State<GenericAutoCompleteWidget> createState() => _GenericAutoCompleteWidget3State();
}

class _GenericAutoCompleteWidget3State extends State<GenericAutoCompleteWidget> {
  bool showSuffixIcon = false;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<String>(
      itemBuilder:(context, String suggestion) {
        return Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
            child: GenericText(
              fontSize: fontSize3half,
              fontWeight: fontWeight5,
              text: suggestion
            )
          ),
        );
      },
      onSelected:(suggestion) {
        setState(() {
          widget.controller.text = suggestion;
        });
      },
      controller: widget.controller,      
      suggestionsCallback:(search) {
        if(search.isEmpty){
          setState(() => showSuffixIcon = false);
          return List.empty();
        }
        else{
         setState(() => showSuffixIcon = true);
          final displayedOptions = widget.options.where(
            (option) => option.toLowerCase().contains(
              search.toLowerCase()
            )
          );
          return displayedOptions.toList();
        }
      },
      builder: (context, controller, focusNode) {
        return GenericTextField(
          hintText: widget.hintText, 
          controller: controller,
          focusNode: focusNode,
          leadingWidget: widget.leadingWidget,
          suffixIcon: showSuffixIcon ? widget.suffixIcon : null,
        );
      },
    );
  }
}