import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mikemac2/core/global_widget/custom_text_inter.dart';
import 'package:mikemac2/future/app_dog_service/utils/size_container.dart';

import 'controller/fevarite_controller.dart';

class ProductDetails extends StatelessWidget {

  final String image;
  final String title;
  final String price;
  final int index;

  const ProductDetails({
    required this.image,
    required this.title,
    required this.price,
    required this.index,
    super.key});

  @override
  Widget build(BuildContext context) {
   final FavoriteController favoriteController = Get.find();
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250.h,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFFeeeee4),
            ),child: Column(
            children: [
              Obx(()=>
                  Padding(
                    padding: const EdgeInsets.only(left: 280),
                    child: IconButton(
                        onPressed: (){
                          favoriteController.toggleFavorite(index);
                        },
                        icon: Icon(
                          favoriteController.favoriteStates[index] ? Icons.favorite : Icons.favorite_border,
                          color: favoriteController.favoriteStates[index] ? Colors.red : Colors.black,
                        )
                    ),
                  )
              ),
              Image.asset(
                image,
                height: 200.h,
                width: 300.w,
              ),
            ],
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextIner(
                  text: title,
                  fontWeight: FontWeight.w600,
                  size: 20.sp,
                  color: const Color(0xFF111827),
                ),
                CustomTextIner(
                    text: price,
                  size: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF111827),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 350,top: 10),
            child: CustomTextIner(
                text: "Size",
              fontWeight: FontWeight.w600,
              size: 16.sp,
              color: const Color(0xFF000000),
            ),
          ),
       SizedBox(
           width: 100.w,
           child: SizeContainer()
       )
        ],
      ),
    );
  }
}
