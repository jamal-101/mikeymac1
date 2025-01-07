import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class PuppyTraining extends StatelessWidget {
  const PuppyTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details10,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: CustomTextIner(
                    text: "Puppy Training ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 15),
                  child: CustomTextManrope(
                    text: '''Puppy training is a crucial part of your dog's early development and sets the foundation for a well-behaved, well-adjusted adult dog. Proper training from a young age helps with socialization, building good habits, and preventing behavioral issues later in life.
Why Puppy Training is Important:
   • Socialization: Early training helps puppies learn \n       how to interact with other dogs, people, and \n       different environments.
   • Bonding: Training strengthens the bond \n       between you and your puppy, establishing trust \n       and communication.
   • Preventing Behavioral Problems: Early training \n       reduces the risk of undesirable behaviors such \n       as biting, chewing, and jumping.
   • Safety: It helps ensure your puppy is safe in \n       various situations, such as walking on a leash, \n       coming when called, and being comfortable \n       around new experiences.
Essential Areas of Puppy Training:
1.Socialization:
      • Expose your puppy to different \n          environments, sounds, people, and other \n          dogs in a safe, controlled manner.
      • Socialization should be done between 8-16 \n           weeks to help develop confidence and reduce \n           fearfulness later in life.
2.Basic Obedience:
      • Sit – Teach your puppy to sit on command.
      • Stay – Start with short durations and \n          gradually increase the time.
      • Come/Recall – Teach your puppy to come to \n           you reliably, even when distracted.
      • Leave it/Drop it – A vital command to teach your \n           puppy to release or ignore undesirable \n           objects.
      • No jumping up – Teach your puppy not to \n           jump on people, as this can lead to problems \n           later on.
3.Potty Training:
      • Consistent bathroom routines are crucial. \n          Take your puppy outside frequently, especially \n           after meals, naps, and playtime.
      • Use a designated potty spot to help them \n          associate the area with bathroom time.
          Praise and reward immediately after they go \n         outside.
4.Crate Training:
      • Crate training helps your puppy learn to \n          settle and feel safe in their crate, which can \n          be helpful for travel, home-alone time, \n          and during sleep.
      • Gradually introduce the crate as a \n          positive place, using treats, toys, and praise.
5.Bite Inhibition:
      • Puppies explore the world with their mouths, \n         but it’s important to teach them to control \n          their bite.
      • Redirect chewing onto appropriate toys, and \n          use gentle “no bite” cues when they get too \n          rough.

Puppy Training Tips:
      • Consistency: Use the same commands and \n          structure for training sessions.
      • Positive Reinforcement: Reward desired \n          behaviors immediately with treats, praise, or \n          play.
      • Short Training Sessions: Keep training sessions \n          short (5-10 minutes) to maintain your puppy’s \n          attention and prevent them from getting bored.
      • Patience: Puppies have short attention spans, \n          so be patient and understanding as they learn.
      • Socialize Early and Often: Positive experiences \n          during the critical socialization period (8-16 \n          weeks) will set the stage for a well-adjusted \n          adult dog. ''',
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: const Color(0xFF334155),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top : 20,bottom: 20),
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
