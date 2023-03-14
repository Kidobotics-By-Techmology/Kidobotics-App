import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/email_confirmation.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_button.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_textformfield.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  static const routeName = 'email_screen';

  @override
  Widget build(BuildContext context) {
    final emailTextEditingControlller = TextEditingController();

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
            // What is your email? text
            const AppLargeText(
              text: "What is your email?",
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

            // Stay connected with Kidobotics! text
            const AppText(
              text: "Stay connected with Kidobotics!",
              color: AppColors.kSmallTextColor,
            ),

            SizedBox(
              height: Get.height * 0.05,
            ),

            // Name Field
            CustomTextFormField(
              textEditingController: emailTextEditingControlller,
              labelText: "Email",
              hintText: "Enter your email",
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),

            SizedBox(
              height: Get.height * 0.05,
            ),

            // Next Button
            CustomButton(
              buttonText: 'Next',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  EmailConfirmationScreen.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
