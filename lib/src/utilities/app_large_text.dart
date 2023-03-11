import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  const AppLargeText({
    Key? key,
    required this.text,
    this.fontSize = 35.11,
    this.color = Colors.white,
    this.fontWeight = FontWeight.w700,
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
        fontFamily: 'Roboto',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
