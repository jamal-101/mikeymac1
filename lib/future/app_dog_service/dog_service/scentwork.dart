import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class Scentwork extends StatelessWidget {
  const Scentwork({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details8,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: CustomTextIner(
                    text: "Dog Scentwork ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomTextManrope(
                    text: '''Scentwork is also known as nosework or scent detection, is a dog sport such as IGP/Mantrailing etc that uses a dog's natural sense of smell to find a hidden scent:

The desired result:
The dog must find a hidden scent and alert the handler.

Benefits
Scentwork can improve focus, it can fatigue the dog, and strengthen the bond between the dog and handler it’s also a fun thing to do with your dogs.

How it works
The dog and handler work as a team to find the scent, often ignoring distractions like food or toys.

Scentwork mimics the tasks performed by professional detection dogs, such as tracking scents to find evidence or locate articles of information.

Dogs have an excellent sense of smell, with around 220 million olfactory receptors in their nose. Dogs bred specifically for scentwork can have as many as 300 million receptors, and they often have longer ears to help capture scents.
We can teach your dog scentwork at home, or you can take a zoom video class with us or visit our dog training centre.

Use different items, use various types of articles like wood/leather/fabric, heights, and areas to train your dog.

Slowly add distractions
Be aware that the duration of your dog's training sessions will likely lessen when you train for longer periods of time or longer distances, or when you change locations or add more challenging distractions
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
