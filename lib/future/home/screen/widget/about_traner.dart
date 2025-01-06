import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/global_widget/custom_text_inter.dart';

class AboutTraner extends StatelessWidget {
  const AboutTraner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),child: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: 30.h,),
          Padding(
            padding: const EdgeInsets.only(left: 2,top: 20),
            child: Row(
              children: [
                IconButton(
                  icon : Image.asset(Assetpath.arrow2,
                  height: 20.h,),
                  onPressed: () {
                  Navigator.pop(context);
                  },
                  ),
                SizedBox(width: 70.w,),
                CustomTextIner(
                    text: "Michaels Story",
                  size: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Image.asset(Assetpath.details14,
            height: 290.h,
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomTextManrope(
                text: '''Michael is K9 TRAINING SERVICES head trainer with over 30+yrs of dog training experience and trains dogs in obedience, tracking & protection and was previously a trainer/instructor for NASDU delivering their General Purpose Security Dog & Handler Level 2 & 3 training courses., this is a nationally recognised GP Security Dog Handling qualification & the awarding body is  HABC (Highfields Awarding Body of Compliance).''',
              fontWeight: FontWeight.w400,
              size: 14.sp,
              color: const Color(0xfF334155),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomTextManrope(
              text: '''Michael is also an accredited KCAI (Kennel Club Accredited Instructor).IADTB Instructor and level 4 Behaviourist among many other canine related accreditation Michael has the highest titled Dobermann ever in the UK called Fiodina Vom Jaspis BH ZTP IPO1 IPO2 IPO3, 2017 Dutch youth working champion, 2017 Dutch Female working champion and again in 2018 gaining the Dutch female working champion two years in a row,''',
              fontWeight: FontWeight.w400,
              size: 14.sp,
              color: const Color(0xfF334155),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomTextManrope(
              text: '''Fiodina Vom Jaspis is the only Dobermann in the UK to gain 100p in tracking and under an FCI judge''',
              fontWeight: FontWeight.w400,
              size: 14.sp,
              color: const Color(0xfF334155),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 30,right: 10),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Click on the link for our Facebook page ",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF334155),
                    ),
                    children: [
                      TextSpan(
                        text:
                        "K9 \nTRAINING SERVICES",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            launchUrl(Uri.parse("https://www.facebook.com/K9TrainingServices/?ref=bookmarks"));
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomTextManrope(
              text: '''Michael also assesses dogs for the magistrates courts, these dogs have been seized under the Dangerous dogs Act for one reason or another.''',
              fontWeight: FontWeight.w400,
              size: 14.sp,
              color: const Color(0xfF334155),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomTextManrope(
              text: '''Michael also assesses dogs for the magistrates courts, these dogs have been seized under the Dangerous dogs Act for one reason or another.''',
              fontWeight: FontWeight.w400,
              size: 14.sp,
              color: const Color(0xfF334155),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomTextManrope(
              text: '''Usually when a dog is seized under the DDA Michael is instructed by the courts or by the solicitors of the  client who owns the dog to do an initial assessment which will help the courts make a decision on any subsequent control orders that may be placed on the dog depending on the out come of the assessment among other factors, the assessment is a 30 point assessment done usually at the Police kennels or Police training grounds or sometimes at the discretion of both the courts & police it can be done at our training grounds in Kent.

Michael also trains agility, puppy training, companion dog training & IGP Schutzhund as well as courses for the KCGCDS & deals with various dog behavioural problems & aggression issues on a one to one basis, 

Michael has various qualifications in various canine related sectors ranging from KCAI/City & Guilds/CIDBT/ NASDU/IADTB/KCGCDS to name a few.

Michael having met certain criteria as well as completing a KCGCDS examiners course is also an approved instructor for the Kennel Club GCDS (Good Citizen Dog Scheme) the largest dog training scheme in the UK & is an accredited A list examiner for the KCGCDS.

* Michael is also a member of the BIPDT (British Institute of Professional

Some of our qualifications & accreditations
(Can be inspected on request)


* KCAI : KCAI (Kennel Club Accredited Instructor) 
* CPD: CPD Accredited Trainer

* IADTB: level 4 Advanced Behaviourist (Distinction)

* IADTB: Advanced Dog Trainer (Distinction)

* CIBDT : Professional Advanced Instructor Skills & Management.

* IADTB: Dog Training Instructor (Distinction)
Licensed Dutch Helper: Michael is also a licensed Dutch Helper having worked under the guidance of international & world championship helper Mr Ruud Broeders, the examining judge in Utrecht was Dhr.Rick Zainal from Holland.

* KENNEL CLUB A LIST EXAMINER: For the Kennel Club Good Citizen Dog Scheme (A list examiners have completed the KC Approved GCDS Examiners course and have been assessed by 3 KC assessors before passing the course).
 FOUNDER MEMBER NRDTB: National Register Of Dog Trainers & Behaviourists.
 DEFRA APPROVED DOG TRANSPORTER.

* IADTB: Advanced Canine Aggression (Distinction)
 CIBDT: Certified Canine Handling & Training Skills.

UNITED KINGDOM BELGIAN SHEPHERD WORKING DOG ASSOCIATION:
President and Working Dogs Director

* GODTMT: Guild Of Dog Trainers Master Dog Trainer.
 NASDU: EX Instructor/Trainer GPSDH Level 2 & 3.

United Kingdom Belgian Shepherd Working Dog Association: President
 BIPDT: Member of the British Institute Professional Dog Trainers.
 CIBDT: Certified Understanding Canine Care & Behavior.
 CIBDT: Certified Common Canine Behaviour Problems.

* NASDU:Accredited GPSDH level 2 Security dog handlers.

UKDA: President & Working Dogs Director.https://www.uk-dobermann-association.co.uk
 CIBDT: Understanding Canine Aggression. 
 CIDBT: Certified Professional Canine Instructor.
 PTTLS:7303 level 4 Accredited
 CIDBT: Accredited National Dog Training Instructor.
UKDA: Licensed IPO tracklayer & IPO bitehelper (Assessed by Mr Simon kwak from Holland, Mr Simon Kwak is a world championship judge for the FCI). 
WE HAVE FULL PUBLIC LIABILITY INSURANCE FOR BOTH PET DOG TRAINING AND SECURITY DOG & HANDLER TRAINING.MAKE SURE YOUR TRAINER HAS THE CORRECT PUBLIC LIABILITY INSURANCE AS THE VAST MAJORITY OF DOG TRAINERS HAVE NO INSURANCE IN PLACE.

WE ARE ALSO INSPECTED ANNUALLY FOR COMPLIANCE.''',
              fontWeight: FontWeight.w400,
              size: 14.sp,
              color: const Color(0xfF334155),
            ),
          ),
          SizedBox(height: 10.h,),
          Image.asset(
            Assetpath.triner,
            height: 270.h,
          ),
          // SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,top: 10),
            child: Image.asset(Assetpath.triner1,
              height: 270.h,
            ),
          )
        ],
        ),
      ),
    );
  }
}
