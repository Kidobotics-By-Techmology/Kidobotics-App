import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_button.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_textformfield.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({super.key});

  static const routeName = 'login_screen2';

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
            // Log in text
            const AppLargeText(
              text: "Log in",
              textAlign: TextAlign.start,
              color: AppColors.kLargeTextColor,
            ),

            SizedBox(
              height: Get.height * 0.05,
            ),

            // Image
            Center(
              child: Container(
                height: 233,
                width: 233,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/teacher.png'),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: Get.height * 0.03,
            ),

            // Phone Number TextFormField
            CustomTextFormField(
              textEditingController: TextEditingController(),
              labelText: 'Email',
              hintText: 'Enter your email',
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),

            SizedBox(
              height: Get.height * 0.03,
            ),

            // Password TextFormField
            CustomTextFormField(
              textEditingController: TextEditingController(),
              labelText: 'Password',
              hintText: 'Enter your password',
              prefixIcon: Icons.lock,
              isPasswordField: true,
            ),

            SizedBox(
              height: Get.height * 0.03,
            ),

            // Next Button
            CustomButton(
              buttonText: 'Next',
              onTap: () {
                // Navigator.pushNamed(
                //   context,
                //   OTPScreen.routeName,
                // );
              },
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),

            // OR
            const Center(
              child: AppText(
                text: 'OR',
                color: AppColors.kSmallTextColor,
              ),
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),

            // Google Logo and Login with Google Text Button
            CustomButton(
              buttonText: '⚡️ Log in with google',
              color: const Color(0XFFEEEEEE),
              buttonColor: AppColors.kBlackTextColor,
              onTap: () {},
            ),

            SizedBox(
              height: Get.height * 0.03,
            ),

            // Don't have an account? Register text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppText(
                  text: "Already have an account? ",
                  color: AppColors.kSmallTextColor,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const AppText(
                    text: "Login",
                    color: AppColors.kGreenColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
