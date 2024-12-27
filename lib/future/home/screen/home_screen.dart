import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/future/home/screen/widget/custom_card.dart';
import 'package:mikemac2/future/home/screen/widget/custom_shop.dart';
import 'package:mikemac2/future/home/screen/widget/custom_subscription.dart';
import '../../../core/global_widget/custom_bottom.dart';
import '../../../core/global_widget/custom_text_helvatica.dart';
import '../../../core/global_widget/custom_text_inter.dart';
import '../../../core/utils/assets_path.dart';
import '../../app_service/dog_service.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
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
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(Assetpath.appbaricon),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Obx(
              () => homeController.showCard.value
                  ? Container(
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
                                            return CustomSubscription();
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
                      Get.to(() => DogService());
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
                  itemCount: DogService().data.length - 9,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFF7F7F7)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            DogService().data[index]['image'],
                            height: 70,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(DogService().data[index]['title'])
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
                      Get.to(() => DogService());
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
              padding:  EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextHelvatica(text: "About Trainer",
                    fontWeight: FontWeight.w700,
                    size: 18.sp,
                    fontFamily: 'Helvetica',
                    color: Color(0xFF000000),
                  ),
                  Image.asset(Assetpath.png2)
                  // Container(child: SvgPicture.asset(Assetpath.service1,height: 10,width: 20,))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
