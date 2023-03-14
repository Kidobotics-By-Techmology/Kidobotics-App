import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/dashboards/student_checker.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_large_container.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class DashboardCheck extends StatefulWidget {
  const DashboardCheck({super.key});

  static const String routeName = "dashboard_check";

  @override
  State<DashboardCheck> createState() => _DashboardCheckState();
}

class _DashboardCheckState extends State<DashboardCheck> {
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
            // Are you a ... text
            const AppLargeText(
              text: "Are you a ...",
              color: AppColors.kBlueColor,
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),

            // How do you want to use KidoBotics text
            const AppText(
              text: "How do you want to use KidoBotics?",
              color: AppColors.kSmallTextColor,
            ),

            SizedBox(
              height: Get.height * 0.05,
            ),

            // Teacher button container
            CustomLargeContainer(
              text: "Teacher",
              imageUrl: "assets/images/teacher.png",
              color: AppColors.kBlueColor,
              onTap: () {},
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),

            // Student button container
            CustomLargeContainer(
              text: "Student",
              imageUrl: "assets/images/student.png",
              color: AppColors.kGreenColor,
              onTap: () {
                Navigator.pushNamed(context, StudentChecker.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
