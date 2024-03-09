import 'package:flutter/material.dart';
import 'package:truckhub/screens/constants/colors.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: (){
            //Implement the functionality of this IconButton here
          },
        )
      ),
      body: Container(
        color: greenColor
      )
    );
  }
}