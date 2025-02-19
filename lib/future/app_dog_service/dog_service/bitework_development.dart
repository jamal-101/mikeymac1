import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class BiteworkDevelopment extends StatelessWidget {
  const BiteworkDevelopment({super.key});

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
                    Assetpath.details6,
                    height: 300.h,
                    width: 350.w,
                  ),
                  CustomTextIner(
                    text: "Bitework Development ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                  SizedBox(height: 10.h,),
                  CustomTextManrope(
                    text: '''Dog bite work is specialized training for personal protection dogs, focusing on controlled biting and holding to deter threats. Unlike guard dogs, which focus on deterrence, bite work dogs are trained to act when a threat arises, ensuring the safety of their owner.
Key elements of bite work training include:
1.Obedience Foundation \n     Before bite work, dogs must master basic \n     commands (sit, stay, come, heel) to ensure control \n    and responsiveness in high-pressure \n    situations.
2.Bite Command Training \n       Dogs are taught to bite on command, \n       emphasizing control, \n       precision, and safe execution.
3.Controlled Aggression \n      Dogs learn to use aggression only when necessary, \n      staying focused and calm under stress.
4.Bite & Hold \n      Dogs are trained to bite and hold until released, \n       ensuring effective threat neutralization.
Bite work helps prepare dogs to protect their owners with discipline, control, and safety.
              
2. Introduction to the Bite Sleeve or Bite Suit
The bite sleeve or bite suit is used as the primary tool in bite work training. The dog is taught to bite and hold onto the sleeve or suit, simulating a real-life threat scenario. The training gradually increases in intensity, helping the dog learn proper biting techniques without causing injury to the person involved in the training.
3. Controlled Aggression
A key part of bite work is teaching the dog to use controlled aggression. The dog learns to remain calm and focused until the command to bite is given. This controlled aggression ensures that the dog doesn’t act impulsively, and it can differentiate between a real threat and a non-threatening situation.
4. Bite and Hold Techniques
Once the dog bites, the next step is teaching them to maintain the bite until the threat is neutralized or given another command to release. This ensures that the dog will hold the attacker in place, preventing escape and allowing the owner to escape or secure help.
5. Bite Work Under Stress and Distractions
To prepare the dog for real-world scenarios, bite work training involves practicing under stressful conditions and with various distractions. This helps the dog to stay focused and perform their duties even in chaotic situations.
6. Developing the Release Command
The release command is essential to ensure the dog will release the bite when instructed. The dog must be able to quickly disengage from the situation without continuing to bite, as this is necessary for safely handling potential threats and preventing unnecessary harm.
7. Simulated Threat Scenarios
In bite work training, the dog is often introduced to simulated threat scenarios, where an “attacker” may approach, act aggressively, or attempt to overpower the handler. The dog must quickly assess the threat and respond with the appropriate level of force and protection.
8. Safety and Ethics
It's important to note that professional dog bite work training emphasizes the safety and well-being of both the dog and the person being trained. Bite work should never be about causing harm or fostering unnecessary aggression, but rather about preparing the dog to protect in a controlled and ethical manner.
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
