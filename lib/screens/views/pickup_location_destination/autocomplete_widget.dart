import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';
import 'package:truckhub/screens/utils/extensions.dart';
import 'dart:developer' as marach show log;

class GenericAutoCompleteWidget extends StatefulWidget {
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
  State<GenericAutoCompleteWidget> createState() => _GenericAutoCompleteWidgetState();
}

class _GenericAutoCompleteWidgetState extends State<GenericAutoCompleteWidget> {
  bool showSuffixIcon = false;

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if(textEditingValue.text.isEmpty){
          setState(() => showSuffixIcon = false);
          return const Iterable.empty();
        }
        else{
          setState(() => showSuffixIcon = true);
          final displayedOptions = widget.options.where(
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
          suffixIcon: showSuffixIcon ? IconButton(
            onPressed: (){/*implement the functionality of this iconButton here*/},
            icon: const FaIcon(FontAwesomeIcons.circleXmark)
          ) : null,
          leadingWidget: widget.leadingWidget,
          hintText: widget.hintText,
          controller: textEditingController,
          focusNode: focusNode,
        );
      },
    );
  }
}




class GenericAutoCompleteWidget2 extends StatefulWidget {
  final List<String> options;
  final String hintText;
  final TextEditingController controller;
  final Widget? leadingWidget, suffixIcon;

  const GenericAutoCompleteWidget2({
    super.key,
    required this.options,
    required this.hintText,
    required this.controller,
    this.leadingWidget,
    this.suffixIcon
  });

  @override
  State<GenericAutoCompleteWidget2> createState() => _GenericAutoCompleteWidget2State();
}

class _GenericAutoCompleteWidget2State extends State<GenericAutoCompleteWidget2> {
  GlobalKey<AutoCompleteTextFieldState<String>> globalKey = GlobalKey();
  bool showSuffixIcon = false;

  @override
  Widget build(BuildContext context) {

    return AutoCompleteTextField(
      itemSubmitted: (suggestion){},
      key: globalKey,
      suggestions: widget.options,
      itemBuilder:(context, suggestion) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Text(suggestion.toString()),
        );
      },
      itemSorter:(a, b) => 0,
      itemFilter:(suggestion, query) {
        return suggestion.toString().toLowerCase().contains(query.toLowerCase());
      },
      //textChanged: (data){},
      submitOnSuggestionTap: false,
      controller: widget.controller,
      autocorrect: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        isDense: true,
        labelStyle: const TextStyle().decorateTextStyle(
          color: blackColor.withOpacity(0.5),
          fontWeight: fontWeight4,
          fontSize: fontSize3half
        ),
        floatingLabelStyle: const TextStyle().decorateTextStyle(
          color: blackColor.withOpacity(0.6),
          fontWeight: fontWeight4,
          fontSize: fontSize4,
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
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.leadingWidget
      ),
      style: const TextStyle().decorateTextStyle(
        color: blackColor.withOpacity(0.7),
        fontWeight: fontWeight5,
        fontSize: fontSize3half,
      ),
    );
  }
}