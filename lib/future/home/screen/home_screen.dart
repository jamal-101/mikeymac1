import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/future/home/screen/widget/about_traner.dart';
import 'package:mikemac2/future/home/screen/widget/custom_card.dart';
import 'package:mikemac2/future/home/screen/widget/custom_shop.dart';
import 'package:mikemac2/future/home/screen/widget/custom_subscription.dart';
import '../../../core/global_widget/custom_bottom.dart';
import '../../../core/global_widget/custom_text_helvatica.dart';
import '../../../core/global_widget/custom_text_inter.dart';
import '../../../core/utils/assets_path.dart';
import '../../app_dog_service/dog_service.dart';
import '../../nav_bar/controller/nab_bar_controller.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    // final BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());
    return Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: CustomTextHelvatica(
                  text: "Welcome Here",
                  size: 24.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Helvetica',
                  color: const Color(0xFF111827),
                ),
            //   actions: [
            //      Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 12),
            //       child: Image.asset(Assetpath.appbaricon),
            //     )
            // ],
           ),
          body: SingleChildScrollView(
                    child : Column(
                        children: [
                          SizedBox(height: 10.h),
                                 Obx(()=>
                                 homeController.showCard.value ?
                                    Container(
                                      height: 120.h,
                                      width: 370.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.r),
                                        border: Border.all(
                                          color: const Color(0xFFE2E8F0),
                                          width: 1.w,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          // Close Icon
                                          Positioned(
                                            right: -1,
                                            top: -5,
                                            child: IconButton(
                                              onPressed: () {
                                                homeController.toggleCard();
                                              },
                                              icon: Image.asset(
                                                Assetpath.close,
                                                width: 24.w,
                                                height: 24.h,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 12.h,
                                            left: 16.w,
                                            right: 16.w,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                CustomTextIner(
                                                  text:
                                                      "Subscribe to our Online Training Center",
                                                  color: const Color(0xFF111827),
                                                  fontWeight: FontWeight.w600,
                                                  size: 16.sp,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      horizontal: 5, vertical: 25),
                                                  child: CustomButton(
                                                    title: "Subscribe",
                                                    height: 40.h,
                                                    width: 320.w,
                                                    textStyle: GoogleFonts.inter(
                                                      color: const Color(0xFFFFFFFF),
                                                      fontSize: 16.sp,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                    onTap: () {
                                                      showDialog(
                                                          context: context,
                                                          barrierDismissible: false,
                                                          builder: (BuildContext context) {
                                                            return const CustomSubscription();
                                                          });
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                 // ),
                      : const SizedBox(),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 30.h),
                            child: const CustomCardWithStack(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextHelvatica(
                                  text: "Our Services",
                                  size: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Helvetica',
                                ),
                                GestureDetector(
                                  onTap: () {
                                    final bottomNavigationController = Get.find<BottomNavigationController>();
                                    bottomNavigationController.changeIndex(1);
                                  },
                                  child: CustomTextHelvatica(
                                    text: "See All",
                                    size: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Helvetica',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: SizedBox(
                              height: 350.h,
                              child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 15,
                                  childAspectRatio: 1,
                                ),
                                itemCount: DogService().serviceList.length - 8,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xFFF7F7F7)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          DogService().serviceList[index]['image'],
                                          height: 70,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(DogService().serviceList[index]['title'])
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextHelvatica(
                                  text: "Our shop",
                                  size: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Helvetica',
                                ),
                                GestureDetector(
                                  onTap: () {
                                    final bottomNavigationController = Get.find<BottomNavigationController>();
                                    bottomNavigationController.changeIndex(2);
                                  },
                                  child: CustomTextHelvatica(
                                    text: "See All",
                                    size: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Helvetica',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 30.h),
                            child: SizedBox(
                              height: 100.h,
                                child: CustomShop()),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   CustomTextHelvatica(text: "About Trainer",
                                     fontWeight: FontWeight.w700,
                                     size: 18.sp,
                                     fontFamily: 'Helvetica',
                                     color: const Color(0xFF000000),
                                   ),
                                   SizedBox(height: 10.h,),
                                   CustomTextHelvatica(
                                       text: "With over 35 years of dog \ntraining expertise, we \naddress all breeds and \nbehavioral issues",
                                     color: const Color(0xFF475569),
                                     fontFamily: 'Helvetic',
                                     fontWeight: FontWeight.w400,
                                     size: 14.sp,
                                   ),
                                   SizedBox(height: 20.h,),
                                   CustomButton(
                                       title: "About Trainer",
                                       onTap: (){
                                         // homeController.change.value = true;
                                         Get.to( const AboutTraner());
                                       },
                                     textStyle: GoogleFonts.inter(
                                       color:const Color(0xFFFFFFFF),
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14.sp,
                                     ),
                                     height: 40,
                                     width: 120,
                                   ),
                                 ],
                                ),
                                // SizedBox(width: 30.w,),
                                Image.asset(Assetpath.png1,height: 255.h,width: 150.w,)
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h,)
                        ],
                      )
                    )
      );
  }
}
