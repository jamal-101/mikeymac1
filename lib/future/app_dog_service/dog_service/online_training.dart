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

class OnlineTraining extends StatelessWidget {
  const OnlineTraining({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details13,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: CustomTextIner(
                    text: "Online Training Platform ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomTextManrope(
                    text: '''K9 Training Services Dog Training Centre of Excellence online dog training platform offers dog training classes and resources online. 

Online dog training can be just as effective as in-person training, and can offer many benefits, including: 

Accessibility: 
Connect with trainers worldwide.
 
Convenience: 
Schedule sessions without travelling.

Customization: 
Tailor sessions to your dog's needs. 

Comfort for the dog: 
Dogs can learn in their natural environment.
 
Cost-saving: 
Can be more economical than in-person training.

Online dog training platforms typically include: 

Initial assessment: 
Provide your dog's basic details, skills, and goals.

Training plan: 
Your trainer will create a detailed training plan for your dog.
 
Schedule: 
Set up a schedule with your trainer.

Homework: 
Complete homework between virtual sessions.
 
Courses: 
Choose courses based on your dog's needs and training level.

Structured learning modules: 
Our online dog schools offer structured courses.
Our dog training app can include weekly video calls with an accredited trainers by appointment.

https://www.facebook.com/K9TrainingServices/subscribe/ have an online training centre dedicated to competitive dog sports, general dog training obedience, environmental training, protection training, scentwork, puppy training, behavioural issues, husbandry, podcasts, canine care & so much more.

To subscribe follow this link:
''',
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: const Color(0xFF334155),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: RichText(
                      text:  TextSpan(
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 20),
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
