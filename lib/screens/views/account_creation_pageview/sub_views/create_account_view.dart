import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/elevated_button_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/custom_widgets/textbutton_widget.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';


ValueNotifier<bool> valueNotifier = ValueNotifier<bool>(false);

class CreateAccountSubPageView extends StatelessWidget {
  final TextEditingController phoneNumberController,
  passwordController;

  const CreateAccountSubPageView({
    super.key,
    required this.passwordController,
    required this.phoneNumberController
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(15),
          GenericTextField(
            hintText: phoneNumberString,
            controller: phoneNumberController,
          ),
          const Gap(20),
          ValueListenableBuilder<bool>(
            valueListenable: valueNotifier,
            builder: (_, value, __) {
              return GenericTextField(
                obscureText: !value,
                suffixIcon: IconButton(
                  onPressed: () => valueNotifier.value = !valueNotifier.value,
                  icon: Icon(
                    value ? Icons.visibility_off_rounded : Icons.visibility_rounded
                  )
                ),
                hintText: passwordString,
                controller: passwordController,
              );
            },            
          ),
          const Gap(5),
          Align(
            alignment: Alignment.centerLeft,
            child: GenericTextButton(
              onTap: (){
                //Implement the funtionality of this TextButton here
              },
              title: forgotPasswordString
            ),
          ),
          const Gap(40),
          Center(
            child: GenericElevatedButton(
              onPressed: (){
                //Implement the Log in funtionality here.
              },
              title: createAnAccountString
            ),
          ),
          const Gap(50),
          const GenericText(
            noCenterAlign: true,
            fontSize: fontSize3,
            fontWeight: fontWeight5,
            text: automaticLogInString
          )
        ],
      ),
    );
  }
}