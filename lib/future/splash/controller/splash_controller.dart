import 'package:get/get.dart';
import 'package:mikemac2/future/auth/route/app_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _checkFirstTimeUser();
  }

  Future<void> _checkFirstTimeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      Get.offAllNamed(AppRouts.onboardingscreen);

      await prefs.setBool('isFirstTime', false);
    } else {
      Get.offAllNamed(AppRouts.navBar);
    }
  }
}
