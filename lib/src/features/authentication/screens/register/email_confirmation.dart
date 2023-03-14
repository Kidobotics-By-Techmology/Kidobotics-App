import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/success_message.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_button.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_textformfield.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class EmailConfirmationScreen extends StatelessWidget {
  const EmailConfirmationScreen({super.key});

  static const routeName = 'email_confirmation_screen';

  @override
  Widget build(BuildContext context) {
    final otpCodeTextEditingControlller = TextEditingController();

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
            // Verify your account text
            const AppLargeText(
              text: "Verify your account",
              textAlign: TextAlign.start,
              color: AppColors.kLargeTextColor,
            ),

            SizedBox(
              height: Get.height * 0.10,
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
              height: Get.height * 0.03,
            ),

            // A 4 digit code was sent to your email inbox, please check and confirm to continue text
            const AppText(
              text:
                  "A 4 digit code was sent to your email inbox, please check and confirm to continue",
              color: AppColors.kSmallTextColor,
            ),

            SizedBox(
              height: Get.height * 0.05,
            ),

            // Name Field
            CustomTextFormField(
              textEditingController: otpCodeTextEditingControlller,
              labelText: "Email Code",
              hintText: "2525",
              prefixIcon: Icons.numbers,
            ),

            SizedBox(
              height: Get.height * 0.03,
            ),

            // Next Button
            CustomButton(
              buttonText: 'Log in',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  SuccessMessage.routeName,
                );
              },
            ),

            SizedBox(
              height: Get.height * 0.05,
            ),

            // Didn't get a code? Resend
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppText(
                  text: "Didn't get a code? ",
                  color: AppColors.kSmallTextColor,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const AppText(
                    text: "Resend in 5s",
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
