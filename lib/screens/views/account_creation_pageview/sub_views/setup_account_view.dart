import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/row_with_leading_icon.dart';


class SetupYourAccountSubView extends StatelessWidget {
  const SetupYourAccountSubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(10),
          RowWithLeadingIconWidget(
            onTap: (){},
            title: driverPhotoString
          ),
          RowWithLeadingIconWidget(
            onTap: (){},
            title: driverLicenseString
          ),
          RowWithLeadingIconWidget(
            onTap: (){},
            title: onlyNiNString
          ),
          RowWithLeadingIconWidget(
            onTap: (){},
            title: vehiclePolicyString
          ),
          RowWithLeadingIconWidget(
            onTap: (){},
            title: vehicleReportString
          ),
        ],
      ),
    );
  }
}