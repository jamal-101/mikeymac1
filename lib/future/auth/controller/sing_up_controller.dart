import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SingUpController extends GetxController {
  Rx<TextEditingController> fullName = TextEditingController().obs;
  Rx<TextEditingController> singupemailController = TextEditingController().obs;
  Rx<TextEditingController> singuppasswordController =
      TextEditingController().obs;
  Rx<TextEditingController> singConfirmpassController =
      TextEditingController().obs;

  @override
  void onClose() {
    super.onClose();
    fullName.value.dispose();
    singupemailController.value.dispose();
    singuppasswordController.value.dispose();
    singConfirmpassController.value.dispose();
    fullName.value.clear();
    singupemailController.value.clear();
    singConfirmpassController.value.clear();
  }
}
