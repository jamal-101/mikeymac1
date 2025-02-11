import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/future/auth/controller/user_controller.dart';
import '../../../core/global_widget/custom_bottom.dart';
import '../../../core/global_widget/custom_text_field.dart';
import '../../../core/global_widget/custom_text_inter.dart';
import '../../../core/utils/assets_path.dart';
import '../controller/sing_up_controller.dart';

class SingUpScreen extends StatelessWidget {


  SingUpScreen({super.key});

  final formKey = GlobalKey<FormState>();

  final  SingUpController singUpController = Get.put(SingUpController());
  final UserController userController = Get.put(UserController());


  @override
  Widget build(BuildContext context) {

    UserController userController = UserController();

    return Scaffold(
      body: Obx(() => SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h,),
                  Center(
                    child: Image.asset(
                      Assetpath.login,
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 18.w),
                    child: CustomTextIner(
                      text: "Your full name",
                      textAlign: TextAlign.start,
                      color: const Color(0xFF322F37),
                      size: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
                    child: CustomTextField(
                      hintText: "Enter your full name",
                      controller: singUpController.fullName.value,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Full name is required';
                        }
                        if (value.length < 3) {
                          return 'Full name must be at least 3 characters';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 18.w),
                    child: CustomTextIner(
                      text: "Your Email",
                      textAlign: TextAlign.start,
                      color: const Color(0xFF322F37),
                      size: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
                    child: CustomTextField(
                      hintText: "Enter your email",
                      controller: singUpController.singupemailController.value,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        if (!GetUtils.isEmail(value)) {
                          return 'Enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.h,),
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
                    child: CustomTextField(
                      hintText: "Create password",
                      controller: singUpController.singuppasswordController.value,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(padding: EdgeInsets.only(left: 18.w),
                    child: CustomTextIner(
                      text: "Confirm password",
                      textAlign: TextAlign.start,
                      color: const Color(0xFF322F37),
                      size: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
                    child: CustomTextField(
                      hintText: "Confirm password",
                      controller: singUpController.singConfirmpassController.value,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Confirm password is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 8.h,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomButton(
                      title: "Create Account",
                      textStyle: GoogleFonts.inter(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          userController.registration(
                              singUpController.singupemailController.value.text,
                              singUpController.singuppasswordController.value.text
                          );
                        }
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
      ),
    );
  }
}
