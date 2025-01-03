import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/future/auth/controller/sing_up_controller.dart';
import 'package:mikemac2/future/auth/controller/user_controller.dart';
import 'package:mikemac2/future/auth/prestation/sing_up_screen.dart';
import '../../../core/global_widget/custom_bottom.dart';
import '../../../core/global_widget/custom_container.dart';
import '../../../core/global_widget/custom_text_field.dart';
import '../../../core/global_widget/custom_text_inter.dart';
import '../../../core/global_widget/custom_text_manrope.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/assets_path.dart';
import '../controller/login_controller.dart';
import 'forget_password.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final LoginController loginController = Get.put(LoginController());
  final UserController userController = Get.put(UserController());
  final SingUpController singUpController = Get.put(SingUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
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
                    padding: EdgeInsets.only(left: 18.w),
                    child: CustomTextIner(
                      text: "Email",
                      textAlign: TextAlign.start,
                      color: const Color(0xFF322F37),
                      size: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 18.0.w, vertical: 8.0.h),
                    child: CustomTextField(
                      hintText: "Enter your email/phone number",
                      keyboardType: TextInputType.emailAddress,
                      controller: loginController.emailController.value,
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
                  SizedBox(height: 20.h),
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 18.0.w, vertical: 8.0.h),
                    child: CustomTextField(
                      hintText: "Enter your password",
                      controller: loginController.passwordController.value,
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
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(right: 18.w),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => ForgetPassword());
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CustomTextIner(
                          text: "Forget password",
                          size: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomButton(
                      title: "Login",
                      textStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Color(0xFFFFFFFF)
                      ),
                      onTap: () {
                        // // Get.to(()=>HomeScreen());
                        // Get.to(()=>NavigatinPage());
                        // if (formKey.currentState!.validate()) {
                        //   loginController.loginMethod();
                        //   Get.to(()=>HomeScreen());
                        // }
                        userController.login(
                            singUpController.singupemailController.value.text,
                            singUpController.singuppasswordController.value.text
                        );
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
                  SizedBox(height: 30.h,),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: AppColors.black,
                          thickness: 1,
                          endIndent: 10,
                          indent: 100,
                        ),
                      ),
                      CustomTextManrope(
                        text: "or sign up with",
                        color: Color(0xFF4B5768),
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      Expanded(
                        child: Divider(
                          color: AppColors.black,
                          thickness: 1,
                          indent: 10,
                          endIndent: 100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomContainer(
                          color: const Color(0xFF191D23),
                          height: 40.h,
                          width: 90.w,
                          fontWeight: FontWeight.w400,
                          size: 12.sp,
                          imagePath: Assetpath.google,
                          text: "Google"),
                      SizedBox(width: 5.w),
                      CustomContainer(
                          color: const Color(0xFF191D23),
                          height: 40.h,
                          width: 80.w,
                          fontWeight: FontWeight.w400,
                          size: 12.sp,
                          imagePath: Assetpath.apple,
                          text: "Apple"),
                      SizedBox(width: 5.w),
                      CustomContainer(
                          color: const Color(0xFF191D23),
                          height: 40.h,
                          width: 90.w,
                          fontWeight: FontWeight.w400,
                          size: 12.sp,
                          imagePath: Assetpath.facebook,
                          text: "Facebook"),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Don’t have an Account?",
                          style: GoogleFonts.manrope(
                            color: const Color(0xFF191D23),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: " Sign up here",
                              style: GoogleFonts.manrope(
                                color: const Color(0xFF047857),
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(() => SingUpScreen());
                                },
                            )
                          ],
                        ),
                      ),
                    ],
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
