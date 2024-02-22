import '../../../core/app_export.dart';/// This class is used in the [writereview_item_widget] screen.
class WritereviewItemModel {WritereviewItemModel({this.rectangle, this.id, }) { rectangle = rectangle  ?? Rx(ImageConstant.imgRectangle92);id = id  ?? Rx(""); }

Rx<String>? rectangle;

Rx<String>? id;

 }
