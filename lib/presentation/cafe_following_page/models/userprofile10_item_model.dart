import '../../../core/app_export.dart';/// This class is used in the [userprofile10_item_widget] screen.
class Userprofile10ItemModel {Userprofile10ItemModel({this.userImage, this.userName, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse2040x40);userName = userName  ?? Rx("Luna");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? userName;

Rx<String>? id;

 }
