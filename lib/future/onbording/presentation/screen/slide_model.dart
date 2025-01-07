
import '../../../../core/const/app_string/string.dart';
import '../../../../core/utils/assets_path.dart';

class SlideModel{
  final String imageUrl;
  final String title;
  final String description;

  SlideModel({
    required this.imageUrl, required this.title, required this.description,
  });
}
final slidList = [
  SlideModel(
      imageUrl: Assetpath.onbording1,
      title: AppString.onbortitle,
      description: AppString.onbordescrip,
  ),
  SlideModel(
      imageUrl: Assetpath.onbording2,
      title: AppString.onbortitle2,
      description: AppString.onbordescrip2,
  ),
];