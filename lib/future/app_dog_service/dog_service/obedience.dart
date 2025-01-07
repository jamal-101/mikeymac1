import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class Obedience extends StatelessWidget {
  const Obedience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details3,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: CustomTextIner(
                    text: "Dog Obedience  ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomTextManrope(
                    text: '''Dog obedience is the ability of a dog to follow commands and instructions from their owner or trainer.
Obedience training is the process of teaching a dog to obey these commands.
Obedience training is important for a number of reasons, including:

Bonding:
Training can help strengthen the bond between a dog and their owner.

Safety:
Obedience training can help keep a dog safe by teaching them to understand instructions.

Manageability:
Obedience makes a dog easier to control and more manageable.

Fun:
Obedience training can be a fun experience for both the dog and the owner.

Some examples of obedience commands include: platz/down, sit, lie , come, here, stay, and heel, fuss.

Obedience training should begin as early as possible and be consistent.
Positive reinforcement, such as treats, praise, or petting, can be used to encourage a dog to repeat a behavior.
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
