import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class Behavioral extends StatelessWidget {
  const Behavioral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details2,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: CustomTextIner(
                    text: "Dog Behavior's  ✅ ",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomTextManrope(
                    text: '''A dog behavioral issue is a certain behavior that an owner finds unacceptable, regardless of whether it's abnormal.
Behavioral problems can vary by country, region, and the dog's history and environment. Some common behavioral issues include:
Handler or dog on dog Aggression: Growling, snarling, showing teeth, lunging, and biting. Aggression is the most common and serious behavioral problem in dogs and needs expert intervention.

Barking: Excessive barking can be a behavioral problem.

Separation anxiety: A type of anxiety that can be a behavioral problem.

Fear of loud noises:
Dogs can develop a fear of loud noises, such as fireworks.

Destructive chewing:
Dogs can destroy furniture or objects.
Digging: Dogs can dig.

Excessive licking:
Dogs can lick excessively.

Eating anything and everything:
Dogs can eat anything and everything.

Pulling on the lead:
Dogs can pull on the lead.

Jumping up at people:
Dogs can jump up at people which can lead to you or your dog being reported to the relevant authorities.

Recall problems:
Dogs can have recall problems, meaning they don't come back when called.

Peeing/pooing in the house:
Dogs can urinate or defecate in the house.

If your dog is showing signs of stress or fear, such as excessive panting, licking lips, hiding, cowering, or aggression, you should ask your trainer/behaviourist for advice.
If your dog has aggressive tendencies, you should consult your vet first in case of any medical issues and then seek the help of an experienced dog trainer or behaviorist
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
