// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class VirtualVideo extends StatelessWidget {
  const VirtualVideo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assetpath.details12,
                    height: 300.h,
                    width: 350.w,
                  ),
                  CustomTextIner(
                    text: "Virtual Video Training Sessions ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                  SizedBox(height: 10.h,),
                  CustomTextManrope(
                    text: '''A virtual video call is a fantastic way to connect with us for one to one training sessions if you
can't attend our training centre due to living in a different country or just to far away to get to
us.
Video conferencing allows users to connect With us for Video, audio, phone, and chat.
Users can also share their screen, share files, and use text chat.''',
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: const Color(0xFF334155),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30,top: 10),
                    child: CustomButton(
                        height: 50.h,
                        width: 370.w,
                        title: "Call For Service",
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            fontFamily: 'Helvetica',
                            color: const Color(0xFFFFFFFF)
                        ),
                        onTap: (){
                          CustomDialog().showContactDialog(context);
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
