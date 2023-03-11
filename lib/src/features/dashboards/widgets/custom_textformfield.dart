import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/constants/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.textEditingController,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    this.isPasswordField = false,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController textEditingController;
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final bool isPasswordField;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: isPasswordField ? true : false,
      obscuringCharacter: '*',
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppColors.kSmallTextColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.kSmallTextColor,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: AppColors.kLightGreenColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: AppColors.kLightGreenColor,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3.0,
            color: AppColors.kLightGreenColor,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: AppColors.kSmallTextColor,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),

      // onChanged

      // validator
    );
  }
}
