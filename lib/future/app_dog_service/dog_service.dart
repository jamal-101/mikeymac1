import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mikemac2/future/auth/route/app_route.dart';
import '../../core/global_widget/custom_text_helvatica.dart';
import '../../core/utils/assets_path.dart';

class DogService extends StatelessWidget {
  final List<Map<String ,dynamic>> serviceList =[
    {'image' : Assetpath.service1, 'title' : "Residential Training",'route' : AppRouts.residential},
    {'image' : Assetpath.service2, 'title' : "Puppy Training",'route' : AppRouts.puppytraining},
    {'image' : Assetpath.service3, 'title' : "General Obedience",'route' : AppRouts.obedience},
    {'image' : Assetpath.service4, 'title' : "Behavioral Issues",'route' : AppRouts.behavior},
    {'image' : Assetpath.service5, 'title' : "Advanced Obedience",'route' : AppRouts.advancedObedience},
    {'image' : Assetpath.service6, 'title' : "Personal Protection",'route' : AppRouts.personalProtection},
    {'image' : Assetpath.service7, 'title' : "Bitework Development",'route' : AppRouts.biteworkDevelopment},
    {'image' : Assetpath.service8, 'title' : "Helper Decoy Training",'route' : AppRouts.helperDecoy},
    {'image' : Assetpath.service9, 'title' : "Scentwork Training",'route' : AppRouts.scentWork},
    {'image' : Assetpath.service10, 'title' : "Agility",'route' : AppRouts.agility},
    {'image' : Assetpath.service11, 'title' : "IGP Dog Sports",'route' : AppRouts.igpDogSports},
    {'image' : Assetpath.service12, 'title' : "Video Call",'route' : AppRouts.virtualVideo},
    {'image' : Assetpath.service13, 'title' : "Online Training",'route' : AppRouts.onlineTraining},
    {'image' : Assetpath.service15, 'title' : "Training Plans",'route' : AppRouts.trainingPlans},
  ];
   DogService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: CustomTextHelvatica(text: "Services",
        color: Colors.black,
          size: 20.sp,
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8/0.8,
            ),
            itemCount: serviceList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Get.toNamed(serviceList[index]['route']);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFF7F7F7)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        serviceList[index]['image'],height: 70,
                      ),
                      SizedBox(height: 20.h,),
                      Text(
                          serviceList[index]['title']
                      )
                    ],
                  ),
                ),
              );
            },
        ),
      ),
    );
  }
}
