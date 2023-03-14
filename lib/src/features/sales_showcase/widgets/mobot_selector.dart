import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';

class MobotSelector extends StatelessWidget {
  const MobotSelector({
    super.key,
    required this.color,
    required this.imageUrl,
    required this.mobotNumber,
    required this.mobotDescription,
  });

  final Color color;
  final String imageUrl;
  final int mobotNumber;
  final String mobotDescription;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: Get.height * 0.25,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        // Image Positioned A little from the right and overflowing to the top of the container
        Positioned(
          right: 30,
          top: -50,
          child: Image.asset(
            imageUrl,
            height: Get.height * 0.2,
          ),
        ),

        // Texts in a column starting at left of the container
        Positioned(
          left: 20,
          bottom: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title text
              AppLargeText(
                text: "Mobot $mobotNumber",
                textAlign: TextAlign.start,
                color: AppColors.kWhiteTextColor,
                fontSize: 17.55,
              ),
              const SizedBox(
                height: 10,
              ),
              AppLargeText(
                text: mobotDescription,
                textAlign: TextAlign.start,
                color: AppColors.kWhiteTextColor,
                fontSize: 17.55,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
