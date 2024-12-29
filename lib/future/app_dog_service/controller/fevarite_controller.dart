// import 'package:get/get.dart';
//
// class FavoriteController extends GetxController {
//   var isFavorite = false.obs;
//   var favoriteCount = 0.obs;
//
//   void toggleFavorite() {
//     if (isFavorite.value) {
//       isFavorite.value = false;
//       favoriteCount.value = 0;
//     } else {
//       isFavorite.value = true;
//       favoriteCount.value = 1;
//     }
//   }
// }
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
}
