import '../../../core/app_export.dart';/// This class is used in the [description_item_widget] screen.
class DescriptionItemModel {DescriptionItemModel({this.circleImage, this.description, this.time, this.id, }) { circleImage = circleImage  ?? Rx(ImageConstant.imgImage1650x50);description = description  ?? Rx("Lorem Ipsum is simply dummy text \nof the printing and typesetting.");time = time  ?? Rx("10:20AM");id = id  ?? Rx(""); }

Rx<String>? circleImage;

Rx<String>? description;

Rx<String>? time;

Rx<String>? id;

 }
