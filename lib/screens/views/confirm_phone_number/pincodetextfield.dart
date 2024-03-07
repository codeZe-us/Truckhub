import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:truckhub/screens/constants/colors.dart';

class PinCodeFields extends StatelessWidget {
  const PinCodeFields({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      onCompleted: (text){
        //print(text);
        //Place your cusor on the 'onCompleted' to know more about the given text parameter
      },
      cursorColor: blackColor,
      cursorWidth: 2,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 50,
        fieldWidth: 70,
        inactiveColor: blackColor,
        inactiveBorderWidth: 1,
        activeBorderWidth: 1,
        activeColor: greenColor,
        selectedColor: greenColor,
        selectedBorderWidth: 1
      ),
    );
  }
}