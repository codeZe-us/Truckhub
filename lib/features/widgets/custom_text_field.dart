import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/color.dart';

class CustomTextField extends StatefulWidget {
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final String? label;
  final String? errorText;
  final bool? readOnly;
  final String? readText;
  final double? fontSize;
  final double? hintFontSize;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final Function(String?)? onSaved;
  final Function(String?)? onFieldSubmitted;
  final Function()? onTap;
  final TextInputType? textInputType;
  final Icon? icon;
  const CustomTextField({
    super.key,
    this.inputFormatters,
    this.label,
    this.fontSize,
    this.hintFontSize,
    this.controller,
    required this.hintText,
    this.icon,
    this.readOnly,
    this.validator,
    this.onTap,
    this.onChanged,
    this.onSaved,
    this.onFieldSubmitted,
    this.textInputType,
    required this.obscureText,
    this.readText,
    this.errorText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return widget.label != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.label!,
                style:
                    TextStyle(color: AppColors.greyColor, fontFamily: 'Medium'),
              ),
              const SizedBox(
                height: 5,
              ),
              // widget.readOnly ?? false
              //     ? Container(
              //         height: 48,
              //         width: Get.width,
              //         decoration: BoxDecoration(
              //             border: Border.all(color: AppColors.grey[200]),
              //             borderRadius: BorderRadius.circular(Sizes.br)),
              //         child: Padding(
              //           padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
              //           child: Text(widget.readText ?? '',
              //               style: TextStyle(
              //                   color: AppColors.grey[60],
              //                   fontSize: widget.hintFontSize ?? Sizes.b2)),
              //         ),
              //       )
              //     :
              TextFormField(
                onTap: widget.onTap,
                readOnly: widget.readOnly ?? false,
                obscureText: widget.obscureText == false ? false : !show,
                validator: widget.validator,
                inputFormatters: widget.inputFormatters,
                controller: widget.controller,
                onSaved: widget.onSaved,
                initialValue: widget.readText,
                onChanged: widget.onChanged,
                onFieldSubmitted: widget.onFieldSubmitted,
                keyboardType: widget.textInputType ?? TextInputType.text,
                style: TextStyle(fontSize: widget.fontSize ?? 16),
                decoration: InputDecoration(
                    hintText: widget.hintText,
                    errorText: widget.errorText,
                    suffix: widget.icon,
                    suffixIcon: widget.obscureText
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                show = !show;
                              });
                            },
                            child: show
                                ? Icon(
                                    Icons.visibility,
                                    color: AppColors.greyColor,
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: AppColors.greyColor,
                                  ),
                          )
                        : const SizedBox(),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyColor,
                        fontSize: widget.hintFontSize ?? 16),
                    isDense: true,
                    // contentPadding: const EdgeInsets.all(10),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.secondaryColor, width: 1.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.4),
                            width: 1.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7.5))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.lightgrey, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.lightgrey, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.secondaryColor, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.redColor, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)))),
              ),
            ],
          )
        : TextFormField(
            onTap: widget.onTap,
            readOnly: widget.readOnly ?? false,
            obscureText: widget.obscureText == false ? false : !show,
            validator: widget.validator,
            inputFormatters: widget.inputFormatters,
            controller: widget.controller,
            onSaved: widget.onSaved,
            initialValue: widget.readText,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted,
            keyboardType: widget.textInputType ?? TextInputType.text,
            style: TextStyle(fontSize: widget.fontSize ?? 16),
            decoration: InputDecoration(
                hintText: widget.hintText,
                suffix: widget.icon,
                suffixIcon: widget.obscureText
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        child: show
                            ? Icon(
                                Icons.visibility,
                                color: AppColors.greyColor,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: AppColors.greyColor,
                              ),
                      )
                    : const SizedBox(),
                hintStyle: TextStyle(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: widget.hintFontSize ?? 16),
                isDense: true,
                // contentPadding: const EdgeInsets.all(10),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.secondaryColor, width: 1.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor.withOpacity(0.4),
                        width: 1.5),
                    borderRadius: const BorderRadius.all(Radius.circular(7.5))),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.lightgrey, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.lightgrey, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.secondaryColor, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.redColor, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(10)))),
          );
  }
}

class CustomTextField2 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? suffixIcon;
  final VoidCallback? onPressed;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const CustomTextField2(
      {super.key,
      required this.controller,
      required this.hintText,
      this.suffixIcon,
      this.onPressed,
      required this.obscureText,
      this.keyboardType,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: AppColors.blackColor,
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 16,
            color: AppColors.blackColor,
          ),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              // borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(
                  color: AppColors.blackColor,
                )),
            errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                color: AppColors.redColor,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                color: AppColors.redColor,
              ),
            ),
            errorStyle: const TextStyle(
              fontFamily: 'Avenir',
              fontSize: 12,
            ),
            filled: true,
            fillColor: AppColors.greyColor,
            suffixIcon: IconButton(
              onPressed: onPressed,
              icon: Icon(
                suffixIcon,
                color: AppColors.greyColor,
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
            
              fontSize: 16,
              color: AppColors.blackColor,
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
