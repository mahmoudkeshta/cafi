import '../../../core/app_export.dart';/// This class is used in the [userprofile9_item_widget] screen.
class Userprofile9ItemModel {Userprofile9ItemModel({this.circleImage, this.textStarbucks, this.imageRating, this.textRating, this.follow, this.textFollowers, this.id, }) { circleImage = circleImage  ?? Rx(ImageConstant.imgImage1685x85);textStarbucks = textStarbucks  ?? Rx("Starbucks");imageRating = imageRating  ?? Rx(ImageConstant.imgSignal);textRating = textRating  ?? Rx("8.1 Rating");follow = follow  ?? Rx("Follow");textFollowers = textFollowers  ?? Rx("10K");id = id  ?? Rx(""); }

Rx<String>? circleImage;

Rx<String>? textStarbucks;

Rx<String>? imageRating;

Rx<String>? textRating;

Rx<String>? follow;

Rx<String>? textFollowers;

Rx<String>? id;

 }
