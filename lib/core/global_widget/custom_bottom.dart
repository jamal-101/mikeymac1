import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height = 48,
    this.width = double.infinity,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.elevation = 5.0,
    this.textStyle,
    this.borderRadius,
  });

  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double elevation;
  final TextStyle?textStyle;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
