import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mikemac2/future/onbording/presentation/screen/slide_model.dart';
import '../../../../core/global_widget/custom_text_inter.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(slidList[index].imageUrl),
        CustomTextIner(
            text: slidList[index].title,
            color: const Color(0xFF000000),
            size: 28.sp,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center),
        SizedBox(
          height: 20.h,
        ),
        CustomTextIner(
          text: slidList[index].description,
          color: const Color(0xFF667085),
          size: 14.sp,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
