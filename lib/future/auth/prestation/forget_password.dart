import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/global_widget/custom_bottom.dart';
import '../../../core/global_widget/custom_text_field.dart';
import '../../../core/global_widget/custom_text_inter.dart';
import '../../../core/utils/assets_path.dart';
import '../controller/porget_password_controller.dart';
import 'otp_screen.dart';


class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  final formKey = GlobalKey<FormState>();
  final ForgetPasswordController forgetPasswordController = Get.put(ForgetPasswordController());

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
                SizedBox(
                  height: 60.h,
                ),
                Center(
                  child: Image.asset(
                    Assetpath.login,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: CustomTextIner(
                    text: "Enter Your Email",
                    textAlign: TextAlign.start,
                    color: const Color(0xFF322F37),
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
                  child: CustomTextField(
                    hintText: "example@gmail.com",
                    controller: forgetPasswordController.forgetemailController.value,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomButton(
                    title: "Get Verification Code",
                    textStyle: GoogleFonts.inter(
                      color: const Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                    onTap: () {
                      // if (formKey.currentState!.validate()) {}
                      Get.to(() => OtpScreen());
                    },
                    height: 50.h,
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
