import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/core/global_widget/custom_text_helvatica.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import 'controller/fevarite_controller.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class DogShop extends StatelessWidget {
  final List<Map<String, dynamic>> shop = [
    {'image': Assetpath.shop1, 'title': 'Flat Collar', 'title1': '\$60'},
    {'image': Assetpath.shop1, 'title': 'Flat Collar', 'title1': '\$60'},
    {'image': Assetpath.shop1, 'title': 'Flat Collar', 'title1': '\$60'},
    {'image': Assetpath.shop1, 'title': 'Flat Collar', 'title1': '\$60'},
    {'image': Assetpath.shop1, 'title': 'Flat Collar', 'title1': '\$60'},
    {'image': Assetpath.shop1, 'title': 'Flat Collar', 'title1': '\$60'},
    {'image': Assetpath.shop1, 'title': 'Flat Collar', 'title1': '\$60'},
    {'image': Assetpath.shop1, 'title': 'Flat Collar', 'title1': '\$60'},
  ];

  DogShop({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.put(FavoriteController());
    favoriteController.initializeFavorites(shop.length);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.white,
          title: CustomTextHelvatica(
              text: "Shop",
            color: const Color(0xFF111827),
            fontWeight:  FontWeight.w700,
            fontFamily: 'Helvetica',
            size: 20.sp,
          ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.9,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8/0.7,
        ),
        itemCount: shop.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: InkWell(
              onTap: () async {
                UrlLauncher.launchUrl(Uri.parse("https://www.facebook.com/\nK9TrainingServices?mibextid=LQQJ4d"));
              },
              child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF7F7F7),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120,top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          border: Border.all(
                            color: const Color(0xFFE5E7EB),
                            width: 1.w,
                          ),
                        ),
                        child: Obx(() => IconButton(
                          onPressed: () => favoriteController.toggleFavorite(index),
                          icon: Icon(
                            favoriteController.favoriteStates[index]
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: favoriteController.favoriteStates[index]
                                ? Colors.red
                                : Colors.black,
                          ),
                        )),
                      ),
                    ),
                    Image.asset(
                        shop[index]['image'],
                      height: 50,
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          shop[index]['title'],
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF111827)
                          ),
                        ),
                        Text(
                          shop[index]['title1'],
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color: const Color(0xFF111827),
                            fontFamily: 'Helvetica'
                          ),
                        )
                      ],
                    ),
                  ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
