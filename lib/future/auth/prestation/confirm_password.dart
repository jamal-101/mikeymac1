import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/global_widget/custom_bottom.dart';
import '../../../core/global_widget/custom_text_field.dart';
import '../../../core/global_widget/custom_text_inter.dart';
import '../../../core/utils/assets_path.dart';
import '../controller/confirm_password_controller.dart';

class ConfirmPassword extends StatelessWidget {
  final PasswordController passwordController = Get.put(PasswordController());
  final ConfirmPasswordController confirmPasswordController = Get.put(ConfirmPasswordController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
                Center(
                  child: Image.asset(
                    Assetpath.login,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomTextIner(
                    text: "Create New Password",
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                    size: 20.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: CustomTextIner(
                    text: "Password",
                    textAlign: TextAlign.start,
                    color: const Color(0xFF322F37),
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
                  child: Obx(() => CustomTextField(
                    hintText: "**************",
                    obscureText: passwordController.isObscured.value,
                    controller: confirmPasswordController.newPasswordController.value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters long";
                      }
                      return null;
                    },
                  )),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: CustomTextIner(
                    text: "Confirm Password",
                    textAlign: TextAlign.start,
                    color: const Color(0xFF322F37),
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
                  child: Obx(() => CustomTextField(
                    hintText: "***************",
                    obscureText: passwordController.isObscured.value,
                    controller: confirmPasswordController.newConfirmPasswordController.value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Confirm Password cannot be empty";
                      } else if (value != confirmPasswordController.newPasswordController.value.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  )),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomButton(
                    title: "Save Password",
                    textStyle: GoogleFonts.inter(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400
                    ),
                    onTap: () {
                      // if (formKey.currentState!.validate()) {}
                      Get.snackbar("Success", "Password has been updated successfully!");
                    },
                    height: 60.h,
                    width: 400.w,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    elevation: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
