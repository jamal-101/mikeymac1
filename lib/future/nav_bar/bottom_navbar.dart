// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import 'package:mikemac2/future/booking/screen/booking.dart';
import 'package:mikemac2/future/home/screen/home_screen.dart';
import '../app_dog_service/dog_service.dart';
import '../app_dog_service/dog_shop.dart';
import 'controller/nab_bar_controller.dart';

class NavigatinPage extends StatelessWidget {
  NavigatinPage({super.key});

  List<Widget> screen = [
    const HomeScreen(),
    DogService(),
    DogShop(),
     Booking(),
  ];

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());

    return Scaffold(
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screen,
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) {
              
                bottomNavigationController.changeIndex(index);
             
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  Assetpath.nav1,
                  height: 24.h,
                  width: 24.w,
                  color: bottomNavigationController.selectedIndex.value == 0
                      ? Colors.green
                      : Colors.white,
                ),
                label: "Home",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  Assetpath.nav2,
                  height: 24.h,
                  width: 24.w,
                  color: bottomNavigationController.selectedIndex.value == 1
                      ? Colors.green
                      : Colors.white,
                ),
                label: "Service",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  Assetpath.nav3,
                  height: 24.h,
                  width: 24.w,
                  color: bottomNavigationController.selectedIndex.value == 2
                      ? Colors.green
                      : Colors.white,
                ),
                label: "Shop",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  Assetpath.booking,
                  height: 30.h,
                  width: 30.w,
                      color: bottomNavigationController.selectedIndex.value == 3
                      ? Colors.green
                      : Colors.white,
                ),
                label: "Booking",
                backgroundColor: Colors.black,
              ),
            ],
          )),
    );
  }
}
