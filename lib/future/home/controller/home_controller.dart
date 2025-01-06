import 'package:get/get.dart';

class HomeController extends GetxController {
  var showCard = false.obs;

  var change = false.obs;

  void togglePage() {
    change.value = !change.value;
  }

  @override
  void onInit() {
    super.onInit();
    showCardWithDelay();
  }

  void showCardWithDelay() async {
    await Future.delayed(const Duration(seconds: 2));
    showCard.value = true;
  }

  void toggleCard() {
    showCard.value = !showCard.value;
  }
}
