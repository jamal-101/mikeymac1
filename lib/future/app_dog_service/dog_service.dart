import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/advanced_obedience.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/behavioral.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/personal_protection.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/puppy_training.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/residential.dart';
import '../../core/global_widget/custom_text_helvatica.dart';
import '../../core/utils/assets_path.dart';
import 'dog_service/bitework_development.dart';
import 'dog_service/obedience.dart';

class DogService extends StatelessWidget {
  final List<Map<String ,dynamic>> data =[
    {'image' : Assetpath.service1, 'title' : "Residential Training",},
    {'image' : Assetpath.service2, 'title' : "Puppy Training",},
    {'image' : Assetpath.service3, 'title' : "General Obedience",},
    {'image' : Assetpath.service4, 'title' : "Behavioral Issues",},
    {'image' : Assetpath.service5, 'title' : "Advanced Obedience",},
    {'image' : Assetpath.service6, 'title' : "Personal Protection",},
    {'image' : Assetpath.service7, 'title' : "Bitework Development",},
    {'image' : Assetpath.service8, 'title' : "Helper Decoy Training",},
    {'image' : Assetpath.service9, 'title' : "Scentwork Training",},
    {'image' : Assetpath.service10, 'title' : "Agility",},
    {'image' : Assetpath.service11, 'title' : "IGP Dog Sports",},
    {'image' : Assetpath.service12, 'title' : "Video Call",},
    {'image' : Assetpath.service13, 'title' : "Online Training",},
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
              childAspectRatio: 1,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  if(index == 0){
                    Get.to(()=> const Residential());
                  }else if(index== 1){
                    Get.to(()=> const PuppyTraining());
                  }else if(index == 2){
                    Get.to(()=> const Obedience());
                  }else if(index == 3){
                    Get.to(()=> const Behavioral());
                  }else if(index == 4){
                    Get.to(()=> const AdvancedObedience());
                  }else if(index == 5){
                    Get.to(()=> const PersonalProtection());
                  }else if(index == 6){
                    Get.to(()=> const BiteworkDevelopment());
                  }
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
                        data[index]['image'],height: 70,
                      ),
                      SizedBox(height: 20.h,),
                      Text(
                        data[index]['title']
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
