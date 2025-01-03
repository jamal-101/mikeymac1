import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/global_widget/custom_bottom.dart';
import '../../../core/global_widget/custom_text_field1.dart';
import '../../../core/global_widget/custom_text_lato.dart';
import '../../../core/utils/assets_path.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              border: Border.all(width: 2, color: const Color(0xFFD0D5DD)),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Assetpath.profile1,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "Profile",
          style: GoogleFonts.lato(
            color: const Color(0xfF101828),
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.only(right: 220.w),
              child: CustomTextLato(
                text: "Existing Password",
                color: const Color(0xFF1D2939),
                size: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
              child: const CustomTextField1(
                hintText: "Old password",
                // controller: singUpController.fullName.value,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Full name is required';
                //   }
                //   if (value.length < 3) {
                //     return 'Full name must be at least 3 characters';
                //   }
                //   return null;
                // },
              ),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.only(right: 240.w),
              child: CustomTextLato(
                text: "New Password",
                textAlign: TextAlign.start,
                color: const  Color(0xFF1D2939),
                size: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
              child: const CustomTextField1(
                hintText: "New password",
                // controller: singUpController.singulariseController.value,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Email is required';
                //   }
                //   if (!GetUtils.isEmail(value)) {
                //     return 'Enter a valid email address';
                //   }
                //   return null;
                // },
              ),
            ),
            // SizedBox(height: 20.h,),
            // Padding(
            //   padding: EdgeInsets.only(right: 290.w),
            //   child: CustomTextLate(
            //     text: "Confirm Password",
            //     textAlign: TextAlign.start,
            //     color:  Color(0xFF1D2939),
            //     size: 16.sp,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: CustomTextLato(text: "Confirm Password",
              color: const Color(0xFF1D2939),
              size: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
              child: const CustomTextField1(

                hintText: "Confirm password",
                // controller: singUpController.singConfirm passController.value,
                // obscureText: true,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Confirm password is required';
                //   }
                //   return null;
                // },
              ),
            ),
            SizedBox(height: 130.h,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                title: "Update Change",
                textStyle: GoogleFonts.inter(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                onTap: () {
                  // if (formKey.currentState!.validate()) {
                  // }
                  // Get.to(()=>HomeScreen());
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
    );
  }
}
