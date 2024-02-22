import '../../../core/app_export.dart';/// This class is used in the [textvalue_item_widget] screen.
class TextvalueItemModel {TextvalueItemModel({this.userImage, this.textValue, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse83);textValue = textValue  ?? Rx("Khmer");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? textValue;

Rx<String>? id;

 }
