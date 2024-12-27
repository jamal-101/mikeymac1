import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/core/global_widget/custom_text_lato.dart';

class CustomDotedBorder extends StatelessWidget {
  const CustomDotedBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: DottedBorder(
          dashPattern: [10, 4],
          strokeWidth: 1.3,
          child: Container(
            height: 50,
            width: 400,
            color: Colors.white,
            child:  Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Icon(
                     Icons.add,
                   color: const Color(0xFF000000),
                   weight: 14.w,
                 ),
                  SizedBox(width: 10.h,),
                  CustomTextLato(
                      text: "Add Address",
                    fontWeight: FontWeight.w400,
                      size: 16.sp,
                    color: Color(0xFF000000),
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
