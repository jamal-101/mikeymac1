import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/global_widget/custom_bottom.dart';
import '../../../../core/global_widget/custom_text_inter.dart';
import '../../../../core/utils/assets_path.dart';
import 'custom_dialog2.dart';

class CustomCardWithStack extends StatelessWidget {
  const CustomCardWithStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 16,
            top: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextIner(
                  text: "Ready to Begin Your \nTraining Journey?",
                  color: const Color(0xFF000000),
                  size: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 18),
                CustomButton(
                  title: "Call for Service",
                  textStyle: GoogleFonts.inter(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400
                  ),
                  onTap: () {
                    CustomDialog().showContactDialog(context);
                  },
                  height: 40.h,
                  width: 130.w,
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: -25,
            child: Image.asset(
              Assetpath.home1,
              width: 120.w,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
