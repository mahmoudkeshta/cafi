import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.userImage, this.userName, this.ratingText, this.descriptionText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse31);userName = userName  ?? Rx("Joki boy");ratingText = ratingText  ?? Rx("8.1 Rating");descriptionText = descriptionText  ?? Rx("Yummmy...");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? userName;

Rx<String>? ratingText;

Rx<String>? descriptionText;

Rx<String>? id;

 }
