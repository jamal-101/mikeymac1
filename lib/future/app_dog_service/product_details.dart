import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import 'package:mikemac2/future/app_dog_service/controller/fevarite_controller.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    FavoriteController favoriteController = Get.put(FavoriteController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250.h,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFeeeee4),
                ),child: Column(
                   children: [
    //                  Obx(()=>
    //                //   IconButton(
    //                //       onPressed: favoriteController.toggleFavorite,
    //                //       icon: icon)
    //                //   )
    //                //   Image.asset(Assetpath.shop1)
    //                // ],
    // ),
    //           )
            ],
          ),
         ),
         ],
        ),
        ),
      ),
    );
  }
}
