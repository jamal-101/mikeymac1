import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController {
  var isObscured = true.obs;

  void toggleObscure() {
    isObscured.value = !isObscured.value;
  }
}

class ConfirmPasswordController extends GetxController{

  Rx<TextEditingController> newPasswordController = TextEditingController().obs;
  Rx<TextEditingController> newConfirmPasswordController = TextEditingController().obs;

}