import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/authentication/screens/login/login_screen2.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_button.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_textformfield.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({super.key});

  static const routeName = 'login_screen1';

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

            // Log in text
            const AppLargeText(
              text: "Log in",
              textAlign: TextAlign.start,
              color: AppColors.kLargeTextColor,
            ),

            const SizedBox(
              height: 60,
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

            const SizedBox(
              height: 20,
            ),

            // Phone Number TextFormField
            CustomTextFormField(
              textEditingController: TextEditingController(),
              labelText: 'Email',
              hintText: 'Enter your email',
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(
              height: 30,
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

            const SizedBox(
              height: 20,
            ),

            // OR
            const Center(
              child: AppText(
                text: 'OR',
                color: AppColors.kSmallTextColor,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Google Logo and Login with Google Text Button
            CustomButton(
              buttonText: '⚡️ Log in with google',
              color: const Color(0XFFEEEEEE),
              buttonColor: AppColors.kBlackTextColor,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  LoginScreen2.routeName,
                );
              },
            ),

            const SizedBox(
              height: 20,
            ),

            // Don't have an account? Register text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppText(
                  text: "Don't have an account? ",
                  color: AppColors.kSmallTextColor,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const AppText(
                    text: "Register",
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
