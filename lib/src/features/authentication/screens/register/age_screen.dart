import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/email_screen.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_button.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_textformfield.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class AgeScreen extends StatelessWidget {
  const AgeScreen({super.key});

  static const routeName = 'afge_screen';

  @override
  Widget build(BuildContext context) {
    final ageTextEditingControlller = TextEditingController();

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

            // How old are you? text
            const AppLargeText(
              text: "How old are you?",
              color: AppColors.kLargeTextColor,
            ),

            const SizedBox(
              height: 100,
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
              height: 30,
            ),

            // Help us make Kidobotics even better! text
            const AppText(
              text: "Help us make Kidobotics even better!",
              color: AppColors.kSmallTextColor,
            ),

            const SizedBox(
              height: 30,
            ),

            // Name Field
            CustomTextFormField(
              textEditingController: ageTextEditingControlller,
              labelText: "Age",
              hintText: "Enter your age",
              prefixIcon: Icons.person,
            ),

            const SizedBox(
              height: 30,
            ),

            // Next Button
            CustomButton(
              buttonText: 'Next',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  EmailScreen.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
