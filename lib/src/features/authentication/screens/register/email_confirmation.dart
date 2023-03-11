import 'package:flutter/material.dart';
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

            // Verify your account text
            const AppLargeText(
              text: "Verify your account",
              textAlign: TextAlign.start,
              color: AppColors.kLargeTextColor,
            ),

            const SizedBox(
              height: 70,
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

            const SizedBox(
              height: 20,
            ),

            // A 4 digit code was sent to your email inbox, please check and confirm to continue text
            const AppText(
              text:
                  "A 4 digit code was sent to your email inbox, please check and confirm to continue",
              color: AppColors.kSmallTextColor,
            ),

            const SizedBox(
              height: 30,
            ),

            // Name Field
            CustomTextFormField(
              textEditingController: otpCodeTextEditingControlller,
              labelText: "Email Code",
              hintText: "2525",
              prefixIcon: Icons.numbers,
            ),

            const SizedBox(
              height: 20,
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

            const SizedBox(
              height: 30,
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
