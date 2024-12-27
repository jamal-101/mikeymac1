import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextLato extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? max;
  final TextOverflow? textOverflow;

  const CustomTextLato(
      {super.key,
        required this.text,
        this.color,
        this.size,
        this.textAlign,
        this.fontWeight,
        this.max,
        this.textOverflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: max,
      textAlign: textAlign,
      style: GoogleFonts.lato(
          color: color, fontSize: size, fontWeight: fontWeight),
    );
  }
}
