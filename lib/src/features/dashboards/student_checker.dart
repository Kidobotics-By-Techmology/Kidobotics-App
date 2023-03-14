import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_large_container.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class StudentChecker extends StatelessWidget {
  const StudentChecker({super.key});

  static const String routeName = "student_checker";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Are you ... text
            const AppLargeText(
              text: "Are you ...",
              color: AppColors.kBlueColor,
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),

            // How do you want to use KidoBotics text
            const AppText(
              text: "Let us help your experience better",
              color: AppColors.kSmallTextColor,
            ),

            SizedBox(
              height: Get.height * 0.05,
            ),

            // Teacher button container
            CustomLargeContainer(
              text: "New here",
              imageUrl: "assets/images/student.png",
              color: AppColors.kPurpleColor,
              onTap: () {},
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),

            // Student button container
            CustomLargeContainer(
              text: "Already with us",
              imageUrl: "assets/images/teacher.png",
              color: AppColors.kYellowColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
