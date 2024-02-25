// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:truckhub/core/constants/spacing.dart';

import '../../../../core/constants/color.dart';
import '../../../bottom_nav/bottom_nav.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_text_field.dart';
import '../sign_up/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // formKey for validation
  final formKey = GlobalKey<FormState>();
  //  controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // variable to store password visibility
  bool showPassword = false;

  // function to enable or disable password visibility
  void passwordVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // variable to store loading circle
  bool isLoading = false;

  // navigate to verification page
  Future<void> navigateToVerificationPage() async {
    final isValid = formKey.currentState!.validate();

    if (isValid) {
      setState(() {
        isLoading = true;
      });
      if (isLoading) {
        await Future.delayed(const Duration(seconds: 5));

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const BottomNav();
        },),);
      }
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpacingManager.h38,

                customTextPppinsSpacing(
                  height: 32 / 24,
                  inputText: 'Welcome back!',
                  fontSize: 24,
                  weight: FontWeight.w600,
                  colorName: AppColors.blackColor,
                ),
                SpacingManager.h25,
                // email textfield
                CustomTextField2(
                  controller: emailController,
                  hintText: 'Phone number',
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  // validator: (email) {

                  // },
                ),
                const SizedBox(
                  height: 20,
                ),
                // password field
                CustomTextField2(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: showPassword ? false : true,
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: showPassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  onPressed: passwordVisibility,
                  validator: (password) {
                    RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if (password != null &&
                        !regex.hasMatch(passwordController.text)) {
                      return 'Password should contain at least \n One uppercase \n One lowercase \n One digit \n One special symbol \n 8 characters in length';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return const ForgotPasswordPage();
                    // },),),
                    child: customTextPppinsSpacing(
                      height: 24 / 16,
                      inputText: 'Forgot password?',
                      fontSize: 12,
                      weight: FontWeight.w800,
                      colorName: AppColors.tertiaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                // button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 63),
                  child: OnboardingButton(
                    onPressed: isLoading ? null : navigateToVerificationPage,
                    child: isLoading
                        ? Center(
                            child: Transform.scale(
                              scale: 0.8,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                color: AppColors.blackColor,
                              ),
                            ),
                          )
                        : customTextPppinsSpacing(
                            height: 24 / 16,
                            inputText: 'Login',
                            fontSize: 16,
                            weight: FontWeight.w800,
                            colorName: AppColors.primaryColor,
                          ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // don't have an account text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customTextPppinsSpacing(
                      height: 24 / 14,
                      inputText: 'Don\'t have an account?',
                      fontSize: 14,
                      weight: FontWeight.w500,
                      colorName: AppColors.blackColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ));
                      },
                      child: customTextPppinsSpacing(
                        height: 24 / 14,
                        inputText: 'Create Account',
                        fontSize: 14,
                        weight: FontWeight.w400,
                        colorName: AppColors.tertiaryColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
