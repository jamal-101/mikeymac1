import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mikemac2/core/global_widget/custom_bottom.dart';
import 'package:mikemac2/core/global_widget/custom_text_field.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import '../controller/booking_controller.dart';

class Booking extends StatelessWidget {
  Booking({super.key});

  final BookingController controller = Get.put(BookingController());

  Widget inputField(String label, TextEditingController ctrl,
      {int maxLines = 1}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: TextFormField(
        controller: ctrl,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey key = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: key,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 60.r),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextIner(
                  text: "Booking Now",
                  size: 30.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                SizedBox(height: 20.h),
                CustomTextField(
                  text: "Name",
                  validator: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return 'Please enter your name';
                    } else if (p0.length < 4) {
                      return 'Name must be at least 4 characters';
                    }
                    return null;
                  },
                  controller: controller.nameController,
                  hintText: "Enter your name",
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  text: "Email",
                  validator: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                        .hasMatch(p0)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  controller: controller.emailController,
                  hintText: "Enter your email",
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    } else if (!RegExp(r'^(?:\+44|0)7\d{9}$').hasMatch(value)) {
                      return 'Please enter a valid UK phone number';
                    }
                    return null;
                  },
                  text: "Phone Number",
                  controller: controller.phoneController,
                  hintText: "Enter your phone number",
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  text: "Address",
                  validator: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return 'Please enter your address';
                    } else if (p0.length < 6) {
                      return 'Address must be at least 4 characters';
                    }
                    return null;
                  },
                  controller: controller.address,
                  hintText: "Enter your Address",
                  min: 2,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  text: "Description",
                  validator: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return 'Please enter a description';
                    } else if (p0.length < 4) {
                      return 'Description must be at least 10 characters';
                    }
                    return null;
                  },
                  controller: controller.descriptionController,
                  hintText: "Enter your description",
                  min: 4,
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  child: controller.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        )
                      : CustomButton(
                          title: "Book Now",
                          onTap: () {
                            if ((key.currentState as FormState).validate()) {
                              controller.sendBookingEmail();
                            }
                          },
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
