import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/authentication/screens/login/login_screen1.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_button.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class SuccessMessage extends StatelessWidget {
  const SuccessMessage({super.key});

  static const routeName = 'success_message';

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
            // Can we have your number? text
            const AppLargeText(
              text: "Congrats!!!",
              textAlign: TextAlign.start,
              color: AppColors.kLargeTextColor,
            ),

            SizedBox(
              height: Get.height * 0.15,
            ),

            // Image
            Center(
              child: Container(
                height: 233,
                width: 233,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/student.png'),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: Get.height * 0.05,
            ),

            // Congratulations, your account has been registered, have fun using Kidobotics! text
            const AppText(
              text:
                  "Congratulations, your account has been registered, have fun using Kidobotics!",
              color: AppColors.kSmallTextColor,
            ),

            SizedBox(
              height: Get.height * 0.1,
            ),

            // Next Button
            CustomButton(
              buttonText: 'Continue to dashboard',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  LoginScreen1.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
