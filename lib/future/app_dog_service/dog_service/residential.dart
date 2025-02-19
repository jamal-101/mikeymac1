import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class Residential extends StatelessWidget {
  const Residential({super.key});

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
                    Assetpath.details1,
                    height: 300.h,
                    width: 350.w,
                  ),
                  CustomTextIner(
                      text: "Residential Dog Training ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                  SizedBox(height: 10.h,),
                  CustomTextManrope(
                      text: '''Residential dog training, also known as a Board and Train program, is a short-term program that involves taking a dog away from home to help with behavioral issues.
The dog lives with a qualified accredited trainer, usually in their home or training facility , and receives daily training sessions and 24/7 supervision.
Residential dog training can really help with a variety of issues, including:
Aggression, Anxiety, Barking, Biting, Jumping up and lead-pulling, Loose lead walking, Poor recall, Play biting, Reactivity, and Separation anxiety.
Our residential training program is completely tailored to each dog's individual needs and personality. At the start of their stay it typically involves trust-building, a lot of play, positive socialization, exercise, treats, and praise so we show the dog we are fun to be with and their training is a positive experience this is vitally important to gain the dogs trust.
              
While residential dog training is very effective, it's not suitable for every dog or owner so we will advise you once we go over your dog’s specific requirements.
It's important to continue what we the trainer show you on your handover once you get the dog back, we will go through everything with you, you will get lots of videos and weekly updates so you see exactly how you’re dog is being trained and more importantly looked after.
              
We have a world 🌍 class residential training program that has hundred of positive reviews on our ''',
                  fontWeight: FontWeight.w400,
                  size: 14.sp,
                  color: const Color(0xFF334155),),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "social media page at ",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF334155),
                          ),
                          children: [
                            TextSpan(
                              text:
                              "https://www.facebook.com/\nK9TrainingServices?mibextid=LQQJ4d",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  launchUrl(Uri.parse("https://www.facebook.com/K9TrainingServices?mibextid=LQQJ4d"));
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
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
