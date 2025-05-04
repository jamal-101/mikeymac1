import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class Agility extends StatelessWidget {
  const Agility({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assetpath.details9,
                    height: 300.h,
                    width: 350.w,
                  ),
                  CustomTextIner(
                    text: "Dog Agility  ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                  SizedBox(height: 10.h,),
                  CustomTextManrope(
                    text: '''Dog agility is a sport where a dog and its handler race through an obstacle course within a time limit:
Obstacles: Courses can include tunnels, weave poles, tire jumps, seesaws, and pause tables.
              
Competition:
The dog and handler team must navigate the course in the correct order, as quickly as possible, and with minimal faults.
              
Direction:
The handler directs the dog using voice, movement, and body signals.
              
Participation:
All breeds, including mixed breeds, can participate.
              
Agility is a great way to bond with your dog and provide physical and mental stimulation. You can create agility courses at home for fun, or train and enter agility shows.
Before you start agility training, you should:
Ensure your dog is physically fit.
Agility involves a lot of running and jumping, so your dog should have sound joints and a healthy heart.
Consider your dog's temperament. Your dog should be comfortable around strange dogs and people.
Figure out what motivates your dog.
Agility training can be hard work, so you should figure out what will keep your dog motivated.
               ''',
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: const Color(0xFF334155),),
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
      ),
    );
  }
}
