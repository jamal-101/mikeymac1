import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SizeContainer extends StatelessWidget {
  final List<Map<String, dynamic>> sizes = [
    {'title': 'S'},
    {'title': 'M'},
    {'title': 'L'},
    {'title': 'XL'},
    {'title': 'XLL'},
  ];

  SizeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: sizes.length,
        itemBuilder: (BuildContext  buildContext, index) {
          return Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(
                  width: 2.w,
                  color: Colors.grey),
              shape: BoxShape.circle,
            ),
          );
        },
      ),
    );
  }
}
