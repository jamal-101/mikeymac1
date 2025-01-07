import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import '../../home/screen/widget/custom_dialog2.dart';

class PersonalProtection extends StatelessWidget {
  const PersonalProtection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details5,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210),
                  child: CustomTextIner(
                    text: "Personal Protection ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomTextManrope(
                    text: '''A personal protection dog is a highly trained dog that is used to protect its owner from threats and keep them and their family safe from physical harm.
They are often family members and are loyal to their owners.
Personal protection dogs are different from guard dogs, which are trained to protect a specific area or property. Guard dogs can take action when they detect threatening behaviors, even when their owner isn't present.
Some dog breeds that are often considered to be protective include:
Belgian Malinois, German Shepherds, Rottweilers, Dobermann, Bullmastiff, Giant Schnauzer, Rhodesian Ridgeback, Great Dane to name a few.

Some steps that can be taken to train a dog to be a guard dog include:

Teaching basic obedience
Impulse control
Holding the threat at bay with a hold & bark display.
Teaching property boundaries
Alone training
Testing the dog
Daily practice
Increasing distractions
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
