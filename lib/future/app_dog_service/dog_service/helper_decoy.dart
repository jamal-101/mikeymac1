import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

class HelperDecoy extends StatelessWidget {
  const HelperDecoy({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details7,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 190),
                  child: CustomTextIner(
                    text: "Helper/Decoy Training  ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomTextManrope(
                    text: '''Bite helper or decoy training is a type of dog training that involves using a decoy dog or person as a sparring partner or advisory for a dog:

Sparring partner
The decoy is a dog's sparring partner, and the two have a unique connection that can help the dog become a better fighter.

Advisory
The decoy can be a dog's fiercest advisor, especially during scenario-based training or a trial.

Training helper
A good training helper is needed every day, and it takes years of experience to become one. A good training helper knows when to tell a handler when a dog needs to work on obedience before bitework.

Here are some things to consider about bite helper or decoy training:

Inconsistent behavior
An inexperienced decoy might not recognize when a dog is focused on the stick as prey, and the dog might chase it and get locked in prey.

Face and hand bites
While it's not common, face or hand bites can happen during protection training. When it does happen, it's usually the result of a mistake made by the decoy.

Training young dogs too early in defence and putting too much or the incorrect amount of pressure on dogs.
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
                      onTap: (){}
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
