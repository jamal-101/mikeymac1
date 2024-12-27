import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../../../core/global_widget/custom_bottom.dart';
import '../../../core/global_widget/custom_text_inter.dart';
import '../../../core/utils/assets_path.dart';
import '../controller/otp_verify_controller.dart';
import 'confirm_password.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  final OtpVerifyControoller otpController = Get.put(OtpVerifyControoller());
  final RxString errorMessage = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              Center(
                child: Image.asset(
                  Assetpath.login,
                ),
              ),
              SizedBox(height: 40.h),
              Align(
                alignment: Alignment.center,
                child: CustomTextIner(
                  text: "A verification code was sent to your email",
                  color: const Color(0xFF322F37),
                  fontWeight: FontWeight.w400,
                  size: 16.sp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Pinput(
                      length: 4,
                      controller: otpController.otpController,
                      defaultPinTheme: PinTheme(
                        height: 67,
                        width: 63,
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: const Color(0xFF98A2B3),
                            width: 1.3,
                          ),
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                        height: 67,
                        width: 63,
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: const Color(0xFF98A2B3),
                            width: 1.3,
                          ),
                        ),
                      ),
                      onCompleted: (value) {
                        otpController.otpController.text = value;
                        errorMessage.value = '';
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          errorMessage.value = '';
                        }
                      },
                    ),
                  ],
                ),
              ),
              Obx(() => errorMessage.value.isNotEmpty
                  ? Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      errorMessage.value,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ) : const SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    width: 360,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    title: "Submit",
                    textStyle: GoogleFonts.inter(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp
                    ),
                    textColor: const Color(0xFFFFFFFF),
                    backgroundColor: const Color(0xFF322F37),
                    onTap: () {
                      // if (otpController.otpController.text.isEmpty) {
                      //   errorMessage.value = "Please enter the OTP";
                      // } else if (otpController.otpController.text.length != 4) {
                      //   errorMessage.value = "OTP must be 4 digits";
                      // } else {
                      //   errorMessage.value = '';
                      //   Get.to(() => ConfirmPassword());
                      // }
                      Get.to(() => ConfirmPassword());
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.snackbar("OTP Resent", "A new OTP has been sent to your email.",
                          backgroundColor: Colors.black,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM);
                    },
                    child: const CustomTextIner(
                      text: "Resend Code",
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w600,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
