import 'package:get/get.dart';

class FavoriteController extends GetxController {
  var isFavorite = false.obs;
  var favoriteCount = 0.obs;
  var favoriteStates = <bool>[].obs;
  void initializeFavorites(int itemCount) {
    favoriteStates.value = List<bool>.filled(itemCount, false);
  }
  void toggleFavorite(int index) {
    if(isFavorite.value){
      isFavorite.value = false;
      favoriteCount.value = 0;
    }else{
      isFavorite.value = true;
      favoriteCount.value = 1;
    }
    favoriteStates[index] = !favoriteStates[index];
  }
  RxBool isSelected = false.obs;

  void toggleSelection() {
    isSelected.value = !isSelected.value;
  }
  RxInt selectedIndex = (-1).obs;
  void toggole(int index){
    if(selectedIndex.value == index ){
      selectedIndex.value = -1;
    }else{
      selectedIndex.value = index;
    }
  }
}
