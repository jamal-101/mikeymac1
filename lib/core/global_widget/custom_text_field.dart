import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final int? min;
  final int? max;
  final String? text;
  final bool? colorTrue;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final bool? enable;
  final TextStyle? hintStyle;


  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.text,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.validator,
    this.min,
    this.max,
    this.colorTrue,
    this.enable,
    this.suffix,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      validator: validator,
      style: colorTrue ?? false
          ? GoogleFonts.poppins(
          color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w400)
          : TextStyle(
        color:const Color(0xFF58585A),
        fontSize: 16.sp,
      ),
      minLines: min,
      decoration: InputDecoration(
        enabled: enable ?? true,
        hintText: hintText,
        hintStyle: hintStyle?? GoogleFonts.inter(
          color:const Color(0xFF58585A),
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
        filled: true,
        suffixIcon: suffix,
        fillColor: AppColors.whiteColor.withOpacity(0.01),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.black,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.black,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.black,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
