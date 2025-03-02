import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/assets_path.dart';

class CustomShop extends StatelessWidget {
  final List<Map<String, dynamic>> item = [
    {'image': Assetpath.container1, 'title': 'Leads', 'color1': const Color(0xff3F7663), 'color2': const Color(0xFFFFFFFF),},
    {'image': Assetpath.container2, 'title': 'Leashes', 'color1': const Color(0xffF2763B), 'color2': const Color(0xFFFFFFFF),},
    {'image': Assetpath.container3, 'title': 'Harnesses', 'color1': const Color(0xff8B6357), 'color2': const Color(0xFFFFFFFF),},
    {'image': Assetpath.container4, 'title': 'Harnesses', 'color1': const Color(0xff3F7663), 'color2': const Color(0xFFFFFFFF),},
    {'image': Assetpath.container4, 'title': 'Harnesses', 'color1': const Color(0xffF2763B), 'color2': const Color(0xFFFFFFFF),},
  ];

  CustomShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal : 12,vertical: 17),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: LinearGradient(

                    colors: [
                      item[index]['color1'],
                      item[index]['color2'],
                    ],
                    begin: Alignment.centerLeft,
                    // end: Alignment.centerRight
                  ),
                ),
              ),
              Positioned(
                top: -17.h,
                left: 2.w,
                right: 2.w,
                child: Image.asset(
                  item[index]['image'],
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 215.h,
                left: 0,
                right: 0,
                child: Text(
                  item[index]['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
