import 'package:flutter/material.dart';

import 'custom_text_manrope.dart';


class CustomContainer extends StatelessWidget {
  final VoidCallback? onTap;
  final String imagePath;
  final String text;
  final double size;
  final FontWeight?fontWeight;
  final Color color;
  final double height;
  final double width;

  const CustomContainer({
    super.key,
    this.onTap,
    required this.color,
    required this.fontWeight,
    required this.size,
    required this.imagePath,
    required this.text,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFFD0D5DD),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
            ),
            const SizedBox(width: 7),
            CustomTextManrope(text: text,
            fontWeight: fontWeight,
            size: size,
            color: color,)
          ],
        ),
      ),
    );
  }
}
