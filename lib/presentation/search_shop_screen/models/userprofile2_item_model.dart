import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.starbucksImage, this.starbucksCircleImage, this.starbucksText, this.ratingText, this.followerCountText, this.id, }) { starbucksImage = starbucksImage  ?? Rx(ImageConstant.imgRectangle192);starbucksCircleImage = starbucksCircleImage  ?? Rx(ImageConstant.imgImage1685x85);starbucksText = starbucksText  ?? Rx("Starbucks");ratingText = ratingText  ?? Rx("8.1 Rating");followerCountText = followerCountText  ?? Rx("10K");id = id  ?? Rx(""); }

Rx<String>? starbucksImage;

Rx<String>? starbucksCircleImage;

Rx<String>? starbucksText;

Rx<String>? ratingText;

Rx<String>? followerCountText;

Rx<String>? id;

 }
