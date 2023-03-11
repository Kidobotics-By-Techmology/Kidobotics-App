import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),

            // Are you ... text
            const AppLargeText(
              text: "Are you ...",
              color: AppColors.kBlueColor,
            ),

            const SizedBox(
              height: 20,
            ),

            // How do you want to use KidoBotics text
            const AppText(
              text: "Let us help your experience better",
              color: AppColors.kSmallTextColor,
            ),

            const SizedBox(
              height: 50,
            ),

            // Teacher button container
            CustomLargeContainer(
              text: "New here",
              imageUrl: "assets/images/student.png",
              color: AppColors.kPurpleColor,
              onTap: () {},
            ),

            const SizedBox(
              height: 20,
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
