import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mikemac2/core/utils/assets_path.dart';
import 'package:mikemac2/future/profile/controller/switch_controller.dart';
import 'package:mikemac2/future/profile/screen/password_screen.dart';
import 'package:mikemac2/future/profile/screen/user_profile.dart';
import 'package:mikemac2/future/profile/screen/utils/custom_dailalog.dart';
import '../../nav_bar/controller/nab_bar_controller.dart';
import 'manage_address.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final List<Map<String, dynamic>> proFile = [
    {
      'image': Assetpath.profile,
      'title': 'Profile',
      'trailing': Assetpath.arrow
    },
    {
      'image': Assetpath.location,
      'title': 'Manage Address',
      'trailing': Assetpath.arrow
    },
    {
      'image': Assetpath.notification,
      'title': 'Notifications',
      'trailing': 'switch'
    },
    {
      'image': Assetpath.password,
      'title': 'Password',
      'trailing': Assetpath.penchil
    },
    {'image': Assetpath.logout, 'title': 'Logout', 'trailing': Assetpath.arrow},
  ];

  @override
  Widget build(BuildContext context) {
    final SwitchController switchController = Get.put(SwitchController());


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
                  final bottomNavigationController = Get.find<BottomNavigationController>();
                  bottomNavigationController.changeIndex(0);
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
      body: Column(
        children: [
          SizedBox(height: 20.h),
          Stack(
            children: [
              Image.asset(
                Assetpath.profileimage,
                height: 100.h,
                width: 100.w,
              ),
              Positioned(
                  bottom: 2,
                  right: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.w, color: Colors.white),
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.separated(
              itemCount: proFile.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(proFile[index]['image']),
                  title: Text(
                    proFile[index]['title'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Get.to(() =>const UserProfile());
                      } else if (index == 1) {
                        Get.to(() =>const ManageAddress());
                      } else if (index == 3) {
                        Get.to(() =>const PasswordScreen());
                      } else if (index == 4) {
                        showModalBottomSheet(
                          isDismissible: false,
                          backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(50.r)),
                            ),
                            context: context,
                            builder: ((context) {
                             return const CustomDailalog();
                            }));
                      }
                    },
                    child: proFile[index]['trailing'] != 'switch'
                        ? Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Image.asset(
                              proFile[index]['trailing'],
                            ),
                          )
                        : Obx(
                            () => Transform.scale(
                              scale: 0.6,
                              child: Switch(
                                value: switchController.isSwitched.value,
                                onChanged: (value) {
                                  switchController.toggleSwitch(value);
                                },
                                activeColor: Colors.grey,
                                inactiveThumbColor: Colors.black,
                              ),
                            ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 0.1,
                  color: Colors.grey,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
