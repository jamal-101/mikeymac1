import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mikemac2/core/global_widget/custom_text_lato.dart';
import '../../../../core/global_widget/custom_bottom1.dart';
import '../../../auth/controller/user_controller.dart';
import '../../controller/dialog_controller.dart';

class CustomDailalog extends StatelessWidget {
  const CustomDailalog({super.key});

  @override
  Widget build(BuildContext context) {
    final DialogController dialogController = Get.put(DialogController());
    final UserController userController = Get.put(UserController());

    return Container(
      height: 200.h,
      width: 400.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: CustomTextLato(
                text: "Logout",
                color: Colors.black,
                fontWeight: FontWeight.w500,
                size: 20.sp,
              ),
            ),
            const Divider(
              color: Color(0x0fff2f4f),
              height: 50,
              thickness: 3,
              endIndent: 16,
              indent: 16,
            ),
            CustomTextLato(
              text: "Are you sure you want to log out?",
              fontWeight: FontWeight.w400,
              size: 16.sp,
              color: const Color(0xFF344054),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => CustomButton1(
                    borderColor: Colors.black,
                    borderWidth: 1.0,
                    height: 50,
                    width: 150,
                    title: "No",
                    textColor: dialogController.isNoButtonClicked.value
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    onTap: () {
                      dialogController.isNoButtonClicked.value =
                          !dialogController.isNoButtonClicked.value;
                      dialogController.isYesButtonClicked.value = false;

                      Navigator.of(context).pop();
                    },
                    backgroundColor: dialogController.isNoButtonClicked.value
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Obx(
                  () => CustomButton1(
                    borderColor: Colors.black,
                    borderWidth: 1.0,
                    height: 50,
                    width: 150,
                    title: "Yes",
                    textColor: dialogController.isYesButtonClicked.value
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    onTap: () {
                      dialogController.isYesButtonClicked.value =
                          !dialogController.isYesButtonClicked.value;
                      dialogController.isNoButtonClicked.value = false;

                      if (dialogController.isYesButtonClicked.value) {
                        userController.logout();
                        EasyLoading.showSuccess("Logout Succesfull");
                      }
                    },
                    backgroundColor: dialogController.isYesButtonClicked.value
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
