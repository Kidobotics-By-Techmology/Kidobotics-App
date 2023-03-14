import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/features/sales_showcase/widgets/mobot_selector.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';

class SelectMobot extends StatelessWidget {
  const SelectMobot({super.key});

  static const routeName = 'select_mobot';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Which color suits your robot bests? text
              const AppLargeText(
                text: "Which color suits your robot bests?",
                textAlign: TextAlign.start,
                fontSize: 23.4,
                color: AppColors.kLargeTextColor,
              ),

              SizedBox(
                height: Get.height * 0.1,
              ),

              const MobotSelector(
                color: AppColors.kYellowColor,
                imageUrl: "assets/images/mobot-pink.jpg",
                mobotNumber: 1,
                mobotDescription:
                    "A sleek and modern robot with a playful pink color",
              ),

              SizedBox(
                height: Get.height * 0.1,
              ),

              const MobotSelector(
                color: AppColors.kRedColor,
                imageUrl: "assets/images/mobot-pink.jpg",
                mobotNumber: 2,
                mobotDescription:
                    "A sleek and modern robot with a playful blue color",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
