import '../../../core/app_export.dart';/// This class is used in the [userprofile8_item_widget] screen.
class Userprofile8ItemModel {Userprofile8ItemModel({this.userImage, this.textContent, this.time, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse204);textContent = textContent  ?? Rx("Lorem Ipsum is simply dummy text \nof the printing and typesetting.");time = time  ?? Rx("10:20AM");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? textContent;

Rx<String>? time;

Rx<String>? id;

 }
