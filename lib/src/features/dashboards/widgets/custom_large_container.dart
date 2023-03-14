import 'package:flutter/material.dart';
import 'package:kidobotics_app/src/utilities/app_large_text.dart';

class CustomLargeContainer extends StatelessWidget {
  const CustomLargeContainer({
    Key? key,
    required this.text,
    required this.imageUrl,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final String imageUrl;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 260,
        width: 330,
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLargeText(
              text: text,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  imageUrl,
                  height: 177.00,
                  width: 184.00,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
