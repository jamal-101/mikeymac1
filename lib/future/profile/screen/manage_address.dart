import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/core/global_widget/custom_doted_border.dart';
import 'package:mikemac2/core/global_widget/custom_text_lato.dart';
import '../../../core/utils/assets_path.dart';

class ManageAddress extends StatelessWidget {
  const ManageAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              border: Border.all(width: 2, color: const Color(0xFFD0D5DD)),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                Assetpath.profile1,
                height: 20,
                width: 20,
              ),
            ),
          ),
        ),
        title: Text(
          "Profile",
          style: GoogleFonts.lato(
            color: const Color(0xfF101828),
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                    Assetpath.location,
                  height: 40.h,
                  width: 40.w,
                ),
                SizedBox(height: 20.w,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextLato(
                        textAlign: TextAlign.start,
                          text: "Home",
                        size: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF000000),
                      ),
                      SizedBox(height: 10.h,),
                      CustomTextLato(
                          text: "775 Rolling Green Rd.",
                        fontWeight: FontWeight.w400,
                        size: 14.sp,
                        color: const Color(0xFF000000),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.h,),
         const CustomDotedBorder()
        ],
      ),
    );
  }
}
