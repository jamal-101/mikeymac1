import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'future/auth/route/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
          ),
          getPages: AppRouts.routes,
          // defaultTransition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 200),
          navigatorKey: Get.key,
          initialRoute: AppRouts.onboardingscreen,
        );
      },
    );
  }
}