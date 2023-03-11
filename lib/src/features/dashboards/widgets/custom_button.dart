import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidobotics_app/src/constants/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.color = AppColors.kGreenColor,
    this.buttonColor = AppColors.kWhiteTextColor,
  });

  final String buttonText;
  final Function() onTap;
  Color color;
  Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.06,
        // height: 50,
        decoration: BoxDecoration(
          color: color,
          // borderRadius: BorderRadius.circular(15.0),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: buttonColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
