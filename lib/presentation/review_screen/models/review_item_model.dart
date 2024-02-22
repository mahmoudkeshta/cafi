import '../../../core/app_export.dart';/// This class is used in the [review_item_widget] screen.
class ReviewItemModel {ReviewItemModel({this.jokiboy, this.jokiBoy, this.ratingCounter, this.yummmy, this.yummmy1, this.yummmy2, this.rating, this.yummmy3, this.id, }) { jokiboy = jokiboy  ?? Rx(ImageConstant.imgEllipse31);jokiBoy = jokiBoy  ?? Rx("Joki boy");ratingCounter = ratingCounter  ?? Rx("8.1 Rating");yummmy = yummmy  ?? Rx("Yummmy...");yummmy1 = yummmy1  ?? Rx(ImageConstant.imgRectangle87);yummmy2 = yummmy2  ?? Rx(ImageConstant.imgRectangle88);rating = rating  ?? Rx(ImageConstant.imgRectangle89);yummmy3 = yummmy3  ?? Rx(ImageConstant.imgRectangle90);id = id  ?? Rx(""); }

Rx<String>? jokiboy;

Rx<String>? jokiBoy;

Rx<String>? ratingCounter;

Rx<String>? yummmy;

Rx<String>? yummmy1;

Rx<String>? yummmy2;

Rx<String>? rating;

Rx<String>? yummmy3;

Rx<String>? id;

 }
