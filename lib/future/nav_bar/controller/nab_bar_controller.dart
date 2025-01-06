import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;

  RxInt i = 0.obs;
  bool second = false;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
