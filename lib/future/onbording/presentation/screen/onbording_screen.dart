import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/future/auth/controller/user_controller.dart';
import 'package:mikemac2/future/auth/route/app_route.dart';
import 'package:mikemac2/future/onbording/presentation/screen/slide.dart';
import 'package:mikemac2/future/onbording/presentation/screen/slide_item.dart';
import 'package:mikemac2/future/onbording/presentation/screen/slide_model.dart';
import '../../controller/onbording_controller.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});

  final PaseviewController controller = Get.put(PaseviewController());
  // final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
       backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: (){
                Get.toNamed(AppRouts.loginScreen);
              },
              child: Text(
                textAlign: TextAlign.center,
                "skip",style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: const Color(0xFF949498),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemCount: slidList.length,
            itemBuilder: (context, index) {
              return SlideItem(index);
            },
          ),
          Obx(() => Container(
            margin: const EdgeInsets.only(bottom: 35),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < slidList.length; i++)
                  if (i == controller.currentPage.value)
                    Slide(true)
                  else
                    Slide(false),
              ],
            ),
          )),
          Positioned(
            right: 20,
            bottom: 20,
            child: GestureDetector(
              onTap: () {
                if (controller.currentPage.value < slidList.length - 1) {
                  controller.pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Get.toNamed(AppRouts.loginScreen);
                }
              },
              child:const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
