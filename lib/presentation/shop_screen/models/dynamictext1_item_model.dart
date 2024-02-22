import '../../../core/app_export.dart';/// This class is used in the [dynamictext1_item_widget] screen.
class Dynamictext1ItemModel {Dynamictext1ItemModel({this.dynamicImage, this.dynamicText, this.id, }) { dynamicImage = dynamicImage  ?? Rx(ImageConstant.imgImage12);dynamicText = dynamicText  ?? Rx("Ice");id = id  ?? Rx(""); }

Rx<String>? dynamicImage;

Rx<String>? dynamicText;

Rx<String>? id;

 }
