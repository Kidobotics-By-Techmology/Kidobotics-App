import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/authentication/screens/register/age_screen.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_button.dart';
import 'package:kidobotics_app/src/features/dashboards/widgets/custom_textformfield.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';
import 'package:kidobotics_app/src/utilities/app_text.dart';

class FullNameScreen extends StatelessWidget {
  const FullNameScreen({super.key});

  static const routeName = "full_name_screen";

  @override
  Widget build(BuildContext context) {
    final fullNameTextEditingControlller = TextEditingController();

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

            // What's your name? text
            const AppLargeText(
              text: "What's your name?",
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

            // Let's get to know each other! text
            const AppText(
              text: "Let's get to know each other!",
              color: AppColors.kSmallTextColor,
            ),

            const SizedBox(
              height: 30,
            ),

            // Name Field
            CustomTextFormField(
              textEditingController: fullNameTextEditingControlller,
              labelText: "Name",
              hintText: "Enter your name",
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
                  AgeScreen.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
