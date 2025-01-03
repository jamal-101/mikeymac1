import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/core/global_widget/custom_text_manrope.dart';
import 'package:mikemac2/core/utils/assets_path.dart';

import '../../home/screen/widget/custom_dialog2.dart';

class IgpDogSports extends StatelessWidget {
  const IgpDogSports({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assetpath.details11,
                  height: 300.h,
                  width: 350.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: CustomTextIner(
                    text: "IGP DogSports ✅",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomTextManrope(
                    text: '''What Are Dog Sports?
Dog sports are competitive activities designed to help dogs exercise, develop new skills, and bond with their owners. These activities are a fun and rewarding way to challenge your dog, boost their confidence, and enhance your teamwork. Dog sports vary from obedience training and agility challenges to exciting outdoor activities like dock diving and lure coursing.
Whether you're looking to engage your dog mentally and physically or pursue a competitive career, dog sports offer something for every breed and ability level. They also serve as great opportunities for dogs and owners to strengthen their relationship.
Popular Dog Sports
1. IGP (International Utility Dog)
Formerly known as IPO or Schutzhund, IGP is a prestigious German dog sport that tests a dog's versatility in three critical areas:
  •Tracking: The dog follows a scent trail left by a \n      person, demonstrating their scenting abilities \n     and focus.
  •Obedience: The dog performs a series of \n      obedience exercises, including sit, stay, heel, \n      and recall, showcasing their discipline and \n      responsiveness.
  •Protection: This phase tests the dog’s courage, \n     power, and ability to protect their handler under \n     controlled conditions.
Developed in the early 1900s to evaluate German Shepherds, IGP is now open to all breeds but remains especially popular among German Shepherds and Belgian Malinois. It's a great sport for dogs that enjoy mentally stimulating tasks and physical challenges.
2. Flyball
Flyball is an exciting relay race where two teams of four dogs compete in a race against time. Each dog must jump over hurdles, trigger a box to release a ball, retrieve the ball, and return it to the start line, allowing the next dog to go. Precision and speed are key, with penalties for dropped balls or false starts. Flyball is a fast-paced, team-oriented sport perfect for energetic dogs.
3. Dock Diving
In dock diving, dogs leap off a platform or dock into a pool to retrieve a toy. The distance the dog jumps is measured, and the dog that jumps the furthest wins. It’s a thrilling activity for water-loving dogs and is particularly popular among breeds like Labrador Retrievers and Border Collies.
4. Lure Coursing
In this sport, dogs chase a plastic lure that moves around a predetermined course, simulating the chase of live prey. Lure coursing is often enjoyed by sight hounds like Greyhounds, Whippets, and Salukis, as it allows them to tap into their natural instincts while having fun.
5. Canicross
Canicross is a sport that pairs a dog with a human runner. The dog is harnessed and runs ahead, pulling the human along the trail. It’s a great way for active humans and dogs to enjoy the outdoors together, improving both physical fitness and bonding.
Other Popular Dog Sports
  •Dog Agility: Dogs navigate an obstacle course \n     that includes tunnels, jumps, weave poles, and \n     more, testing their speed and obedience.
  •Heelwork to Music: Also known as canine \n     freestyle, dogs and their handlers perform \n     choreographed routines set to music, \n     showcasing creativity and synchronization.
  •Trick Training: Teaching dogs a variety of fun and \n      impressive tricks, from basic commands to more \n      complex behaviors.
  •Scentwork: Dogs use their powerful sense of \n     smell to locate hidden objects or scents, offering \n     both mental stimulation and physical \n     exercise.
  •Dog Parkour: Dogs navigate a variety of urban or \n      natural obstacles in a safe and controlled way, \n      testing their agility and confidence.
  •Bikejoring: A thrilling sport where a dog pulls a \n     cyclist along a designated trail, combining speed \n     and teamwork.
  •Canine Hoopers: Dogs navigate a course of \n     hoops and other obstacles in this fun and less \n     physically demanding sport.''',
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
