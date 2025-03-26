import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final _= Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png',fit: BoxFit.contain,),
      ),
      backgroundColor: Colors.white,
    );
  }
}
