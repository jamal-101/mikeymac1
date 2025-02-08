import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:mikemac2/future/auth/controller/login_controller.dart';
import 'package:mikemac2/future/auth/controller/sing_up_controller.dart';
import 'package:mikemac2/future/auth/route/app_route.dart';
import 'package:mikemac2/future/home/controller/home_controller.dart';


class UserController extends GetxController{

  HomeController homeController = Get.put(HomeController());

  var isLoading = false.obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final LoginController loginController = Get.put(LoginController());
  final SingUpController singUpController = Get.put(SingUpController());

  Future<void> registration(String email,String password) async {
    debugPrint("=================$email");
    debugPrint("=================$password");

      UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      EasyLoading.showSuccess("Registration completed successfully");
      Get.offAllNamed(AppRouts.navBar);

  }


  Future<void> login(String email, String password) async {

    isLoading.value = true;

    debugPrint("=================$email");
    debugPrint("=================$password");

      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {

        // SharedPreferences preferences = await SharedPreferences.getInstance();
        // preferences.setString("userID", userCredential.user!.uid);
        // print("UserID stored: ${userCredential.user!.uid}");

        Get.toNamed(AppRouts.navBar);
        isLoading.value = false;
        return ;
      }else if(homeController.change.value = true){
        Get.off(AppRouts.navBar);
      }
      else{

        debugPrint('++++++++++++++++ wrong email or password++++++++++++++++++');

      }

  }

  Future<void> logout() async {
    try {
      await _auth.signOut();

      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // preferences.clear();

      debugPrint("logout Successfully");
      Get.offAllNamed(AppRouts.loginScreen);
    } catch (e) {
    debugPrint("logout Faild");
    }
  }

  var isAuthenticated = false.obs;

  void checkAuthState() {
    _auth.authStateChanges().listen((User? user) {
      if (user != null) {
        isAuthenticated.value = true;
        Get.offAllNamed(AppRouts.navBar);
      } else {
        isAuthenticated.value = false;
        Get.offNamed(AppRouts.onboardingscreen);
      }
    });
  }
}