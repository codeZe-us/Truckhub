// // ignore_for_file: use_build_context_synchronously

// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';

// import 'package:slide_countdown/slide_countdown.dart';


// class VerificationPage extends StatefulWidget {
//   const VerificationPage({super.key});

//   @override
//   State<VerificationPage> createState() => _VerificationPageState();
// }

// class _VerificationPageState extends State<VerificationPage> {
//   // for calculating countdown duration
//   bool isDone = false;
//   // to know when a user has put in any value
//   bool isFilled = false;
//   // pinput controller
//   final controller = TextEditingController();
//   // variable to store loading circle
//   bool isLoading = false;

//   // navigate to verification page
//   Future<void> navigateToBusinessDetailsPage() async {
//     setState(() {
//       isLoading = true;
//     });
//     if (isLoading) {
//       await Future.delayed(const Duration(seconds: 5));

//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) {
//             return const BottomNav();
//           },
//         ),
//       );
//     }

//     setState(() {
//       isLoading = false;
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // for default pinput theme
//     final defaultPinTheme = PinTheme(
//       width: 42.w,
//       height: 42.h,
//       textStyle: TextStyle(
//         fontFamily: 'Avenir',
//         fontSize: 20.sp,
//         fontWeight: FontWeight.w800,
//         color: AppColors.onboardingTextBlack,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.r),
//         border: Border.all(
//           color: AppColors.hintColor,
//         ),
//       ),
//     );

//     // for countdown
//     const defaultDuration = Duration(minutes: 2);
//     const defaultPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 5);

//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       appBar: AppBar(
//         backgroundColor: AppColors.primaryColor,
//         elevation: 0,
//         title: customTextAvenir(
//           inputText: 'Verify Phone Number',
//           fontSize: 20,
//           weight: FontWeight.w800,
//           color: AppColors.onboardingTextBlack,
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // enter the code text
//             customTextAvenir(
//               inputText: 'Enter the code sent to your phone number',
//               fontSize: 16,
//               weight: FontWeight.w400,
//               color: AppColors.onboardingSmallText,
//             ),
//             const Spacer(),
//             // pinput field
//             Center(
//               child: Pinput(
//                 length: 4,
//                 defaultPinTheme: defaultPinTheme,
//                 controller: controller,
//                 onCompleted: (value) {
//                   setState(() {
//                     isFilled = true;
//                   });
//                 },
//                 onChanged: (value) {
//                   setState(() {
//                     isFilled = false;
//                   });
//                 },
//                 focusedPinTheme: defaultPinTheme.copyWith(
//                   decoration: defaultPinTheme.decoration!.copyWith(
//                     border: Border.all(
//                       color: AppColors.onboardingButtonColor,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             // resend code text
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 customTextAvenir(
//                   inputText: isDone ? 'Resend code' : 'Resend code in',
//                   fontSize: 16,
//                   weight: FontWeight.w800,
//                   color: AppColors.onboardingButtonColor,
//                 ),
//                 SizedBox(
//                   width: 10.w,
//                 ),
//                 // countdown design
//                 SlideCountdownSeparated(
//                   duration: defaultDuration,
//                   padding: defaultPadding,
//                   onDone: () {
//                     setState(() {
//                       isDone = true;
//                     });
//                   },
//                   style: TextStyle(
//                     fontFamily: 'Avenir',
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w800,
//                     color: AppColors.primaryColor,
//                   ),
//                   decoration: BoxDecoration(
//                       color: AppColors.onboardingButtonColor,
//                       borderRadius: BorderRadius.all(Radius.circular(6.r))),
//                 ),
//               ],
//             ),
//             const Spacer(),
//             // button
//             Visibility(
//               visible: isFilled ? true : false,
//               child: ElasticInLeft(
//                 child: OnboardingButton(
//                   onPressed: isLoading ? null : navigateToBusinessDetailsPage,
//                   child: isLoading
//                       ? Center(
//                           child: Transform.scale(
//                             scale: 0.8,
//                             child: const CircularProgressIndicator(
//                               strokeWidth: 2.5,
//                               color: AppColors.onboardingButtonColor,
//                             ),
//                           ),
//                         )
//                       : customTextAvenir(
//                           inputText: 'Continue',
//                           fontSize: 16.sp,
//                           weight: FontWeight.w800,
//                           color: AppColors.primaryColor,
//                         ),
//                 ),
//               ),
//             ),
//             const Spacer()
//           ],
//         ),
//       ),
//     );
//   }
// }
