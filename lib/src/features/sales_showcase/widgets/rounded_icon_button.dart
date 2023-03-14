import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/constants/colors.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

  const RoundedIconButton(
      {Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      fillColor: AppColors.kYellowColor.withOpacity(0.3),
      child: Icon(
        icon,
        color: AppColors.kBlueColor,
        size: 30,
      ),
    );
  }
}
