import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/global_widget/custom_bottom.dart';
import '../../../../core/global_widget/custom_text_inter.dart';
import '../../../../core/utils/assets_path.dart';
import 'custom_dialog2.dart';

class CustomSubscription extends StatelessWidget {
  const CustomSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          height: 690.h,
          width: 340.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 310,top: 15),
                  child: GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                      child: Image.asset(Assetpath.close)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      CustomTextIner(text: "Included with subscription",
                        color: const Color(0xFF000000),
                        size: 16.sp,
                        fontWeight: FontWeight.w700,),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFF000000),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Image.asset(Assetpath.subscription1),
                      ),
                    ),
                    Column(
                      children: [
                        CustomTextIner(text: "Included with subscription",
                          size: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000),
                        ),
                        CustomTextIner(
                          text: "Posts, videos, photos and polls \nthat only subscribers can see.",
                          size: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFF000000),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Image.asset(Assetpath.subscription2),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextIner(text: "Live Videos",
                          size: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000),
                        ),
                        CustomTextIner(
                          text: "Exclusive Broadcasts only \naccessible to subscribers of K9 \ntraining service: Dog Training \nCentre of Excellence.",
                          size: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFF000000),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(Assetpath.subscription3),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextIner(text: "Subscriber badge",
                          size: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000),
                        ),
                        CustomTextIner(
                          text: "A special badge displayed next to \nyour comments on K9 Training \nServices: Dog Training Centre of \nExcellence's posts and live \nvideos. Remove it anytime.",
                          size: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFF000000),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Image.asset(Assetpath.subscription4),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextIner(text: "Discounts",
                          size: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000),
                        ),
                        CustomTextIner(
                          text: "Premier discounts on \nmerchandise and other products, \navailable only to subscribers of K9 \nTraining Services: Dog Training \nCentre of Excellence.",
                          size: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFF000000),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Image.asset(Assetpath.subscription4),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextIner(text: "Recognition post",
                          size: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000),
                        ),
                        CustomTextIner(
                          text: "A post on K9 Training Services: \nDog Training Centre of Excellence \ncelebrating new subscribers.",
                          size: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),)
                      ],
                    )
                  ],
                ),
               SizedBox(height: 18.h,),
               CustomButton(title: "Subscribe",
                   width: 300,
                   textStyle: TextStyle(
                     fontWeight: FontWeight.w700,
                     fontSize: 16.sp,
                     fontFamily: 'Helvetica',
                     color: const Color(0xFFFFFFFF),
                   ),
                   onTap: (){
                     CustomDialog().showContactDialog(context);
                   }),
                SizedBox(height: 10.h,)
              ],
            ),
          ),
        ),
      ),
    );
   }
}
