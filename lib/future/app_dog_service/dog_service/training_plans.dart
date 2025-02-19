import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import '../../home/screen/widget/custom_dialog2.dart';

class TrainingPlans extends StatelessWidget {
  const TrainingPlans({super.key});

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
                    Assetpath.details15,
                    height: 300.h,
                    width: 370.w,
                  ),
                  CustomTextIner(
                    text: "Training Plans ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                  SizedBox(height: 10.h,),
                  CustomTextManrope(
                    text: '''Creating a dog and puppy training plan involves several key components that address different aspects of training, including obedience, socialization, and behavioral management. Here’s a structured approach you can consider for both dogs and puppies:
              
Puppy Training Plan
              
1.Socialization (Weeks 1–12)
              
– Goal: Expose your puppy to various environments, people, and other animals.
– Activities:
– Visit different places (parks, pet stores, etc.).
– Arrange playdates with vaccinated puppies and \n   friendly adult dogs.
– Introduce your puppy to different sounds (vacuum, \n    doorbell).
– Encourage gentle handling by various people.
              
2.Basic Commands (Weeks 1–6)
–Goal: Teach fundamental commands for better control.
–Commands to Teach:
–Sit
–Stay
–Come
–Down
–Leave it
–Methods: Use positive reinforcement (treats, \n   praise).
              
3.House Training (Weeks 1–12)
–Goal: Teach your puppy where to eliminate.
–Activities:
–Take your puppy outside frequently (after meals, \n   naps).
–Use a designated spot for elimination.
–Praise and reward immediately after they go outside.
              
4.Leash Training (Weeks 5–12)
–Goal: Teach your puppy to walk politely on a leash.
–Activities:
–Start with short walks in a distraction-free area.
–Use treats to encourage your puppy to stay by your\n  side.
–Gradually increase the duration and complexity of\n  walks.
              
Dog Training Plan
              
1.Basic Obedience (Ongoing)
–Goal: Reinforce commands learned during\n  puppyhood.
–Commands to Focus On:
–Heel
–Wait
–Off
–Drop it
–Methods: Continue using positive reinforcement.
              
2.Advanced Training (Months 2–6+)
–Goal: Teach more complex commands and tricks.
–Activities:
–Teach tricks like roll over, play dead, or fetch.
–Introduce agility training (jumps, tunnels).
–Use clicker training to mark desired behaviors.
3.Behavioral Management (Ongoing)
–Goal: Address any behavioral issues (barking, chewing).
–Activities:
–Identify triggers for unwanted behaviors.
–Use redirection and positive reinforcement to\n   encourage good behavior.
–Consider professional help if issues persist.
4.Regular Exercise and Mental Stimulation (Daily)
–Goal: Keep your dog physically and mentally fit.
–Activities:
–Daily walks and playtime.
–Interactive toys and puzzles.
–Training sessions that challenge their mind.
              
General Tips
–Consistency is Key: Use the same commands and\n  signals for each behavior.
–Short Sessions: Keep training sessions short (5–10\n  minutes for puppies, up to 15–20 for adult dogs) to\n  maintain interest.
–Positive Reinforcement: Always reward desired\n  behaviors with treats, praise, or playtime.
–Patience: Training takes time, and each dog learns at\n  their own pace.
              
By following these plans, you can help ensure that  your puppy or dog grows into a well-behaved and socially adjusted companion. Adjust the plans based on your dog's specific needs and progress.
               ''',
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: const Color(0xFF334155),),
                  CustomButton(
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
                  SizedBox(height: 10.h,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
