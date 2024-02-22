import '../../../core/app_export.dart';/// This class is used in the [userprofile7_item_widget] screen.
class Userprofile7ItemModel {Userprofile7ItemModel({this.userImage, this.text1, this.text2, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse5550x50);text1 = text1  ?? Rx("Lorem Ipsum is simply dummy text \nof the printing and typesetting.");text2 = text2  ?? Rx("10:20AM");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? id;

 }
