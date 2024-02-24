import 'package:flutter/material.dart';

import '../../core/constants/color.dart';
import '../../core/constants/dimension.dart';

class BuildDot extends StatelessWidget {
  const BuildDot({
    super.key,
    required this.currentPage,
    required this.index,
  });

  final int currentPage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: EdgeInsets.only(right: getProportionateScreenWidth(7)),
      height: currentPage == index
          ? getProportionateScreenHeight(8)
          : getProportionateScreenHeight(8),
      width: currentPage == index
          ? getProportionateScreenWidth(25)
          : getProportionateScreenWidth(10),
      decoration: BoxDecoration(
        color: currentPage == index ? AppColors.greyColor : Colors.transparent,
        border: Border.all(
          width: 1,
          color: currentPage == index
              ? AppColors.greyColor
              : AppColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
