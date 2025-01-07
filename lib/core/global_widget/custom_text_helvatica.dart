import 'package:flutter/material.dart';

class CustomTextHelvatica extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  // final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final int? max;
  final TextOverflow? textOverflow;

  const CustomTextHelvatica(
      {super.key,
        required this.text,
        this.color,
        this.size,
        // this.textAlign,
        this.fontWeight,
        this.fontFamily,
        this.max,
        this.textOverflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily:fontFamily,
      ),
    );

  }
}
