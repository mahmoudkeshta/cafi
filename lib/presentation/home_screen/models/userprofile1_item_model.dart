import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.circleImage,
    this.textStarbucks,
    this.textRating,
    this.textFollow,
    this.textFollowers,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgImage1685x85);
    textStarbucks = textStarbucks ?? Rx("Starbucks");
    textRating = textRating ?? Rx("8.1 Rating");
    textFollow = textFollow ?? Rx("Follow");
    textFollowers = textFollowers ?? Rx("10K");
    id = id ?? Rx("");
    
  }


  Rx<String>? circleImage;
  Rx<String>? textStarbucks;
  Rx<String>? textRating;
  Rx<String>? textFollow;
  Rx<String>? textFollowers;
  Rx<String>? id;
}
