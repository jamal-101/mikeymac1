import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:mikemac2/future/auth/controller/login_controller.dart';
import 'package:mikemac2/future/auth/controller/sing_up_controller.dart';
import 'package:mikemac2/future/auth/route/app_route.dart';

class UserController extends GetxController{


  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final LoginController loginController = Get.put(LoginController());
  final SingUpController singUpController = Get.put(SingUpController());

  Future<void> registration(String email,String password) async {

    // if(email.isNotEmpty || password.isNotEmpty ){
    //   EasyLoading.showError("Please enter a valid email and password.");
    //   return;
    // }


    // EasyLoading.show(status: "Loading..");

      UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      EasyLoading.showSuccess("Registration completed successfully");
      Get.offAllNamed(AppRouts.navBar);



    // on FirebaseAuthException catch (e) {
    //   if (e.code == 'email-already-in-use') {
    //     EasyLoading.showError("Email is already in use. Try logging in.");
    //   } else if (e.code == 'invalid-email') {
    //     EasyLoading.showError(
    //         "Invalid email address. Please check and try again.");
    //   } else {
    //     EasyLoading.showError("Registration failed. ${e.message}");
    //   }
    // } on FirebaseException {
    //   EasyLoading.showError("Registration failed. Please try again!");
    // } on Exception catch (e) {
    //   print(e);
    // } finally {
    //   EasyLoading.dismiss();
    // }




  }






  Future<void> login(String email, String password) async {
    EasyLoading.show(status: "Logging in...");

    try {
      // Authenticate user with Firebase Authentication
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Retrieve user data from Firestore
      DocumentSnapshot userDoc = await _firestore
          .collection("users")
          .doc(userCredential.user?.uid)
          .get();

      if (userDoc.exists) {
        Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;
        log("User data: $userData");

        // Update FCM token if it exists


        EasyLoading.showSuccess("Login successful");
        Get.offAllNamed(AppRouts.homeScreen);
      } else {
        EasyLoading.showError("User data not found. Please try again.");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        EasyLoading.showError("No user found for this email. Please register.");
      } else if (e.code == 'wrong-password') {
        EasyLoading.showError("Incorrect password. Please try again.");
      } else if (e.code == 'invalid-email') {
        EasyLoading.showError(
            "Invalid email address. Please check and try again.");
      } else {
        EasyLoading.showError(
            "Login failed. Please check your email and password");
      }
    } on FirebaseException catch (e) {
      print("Login failed. ${e.message}");
    } on Exception catch (e) {
      // Handle general exceptions
      EasyLoading.showError("An error occurred. Please try again.");
      log(e.toString());
    } finally {
      EasyLoading.dismiss();
    }
  }








}