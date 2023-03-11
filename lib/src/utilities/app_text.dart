import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.text,
    this.fontSize = 17.55,
    this.color = Colors.white,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
