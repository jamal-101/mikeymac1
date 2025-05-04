import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.title,
    required this.onTap,
    this.height = 48,
    this.width = double.infinity,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.elevation = 5.0,
    this.textStyle,
    this.titleColor,
  this.borderColor,
  this.borderWidth
  });

  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final Color? backgroundColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double elevation;
  final TextStyle?textStyle;
  final Color? titleColor;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: borderColor != null ? Border.all(
            color: borderColor!,
            width: borderWidth!,
          ) : null,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: elevation,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          title,
          style: GoogleFonts.lato(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
