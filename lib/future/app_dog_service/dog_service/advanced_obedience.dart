
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import 'package:mikemac2/future/home/screen/widget/custom_dialog2.dart';

class AdvancedObedience extends StatelessWidget {
  const AdvancedObedience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details4,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: CustomTextIner(
                    text: "Advanced Obedience ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomTextManrope(
                    text: '''Advanced dog obedience training builds on basic commands to teach dogs more complex skills, such as how to behave in social situations and off-leash:, we also show you how to train really complex exercises by breaking your obedience down from the very beginning.

Distance commands:
Dogs learn to respond to commands from a distance, without the need to be close by.

Hand commands:
Dogs learn to follow hand signals instead of spoken words.

Unseen recall:
Dogs learn to return to you even when they are further away

Off-leash behavior:
Dogs learn to behave and follow commands while off-leash in different environments.

In-motion commands:
Dogs learn to follow commands while they are moving, such as walking or running.

Proofing commands:
Dogs learn to follow commands in different environments and distractions.

Advanced obedience training can be useful in situations where precise control is needed, such as in crowded or distracting areas
 ''',
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: const Color(0xFF334155),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
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
    );
  }
}
