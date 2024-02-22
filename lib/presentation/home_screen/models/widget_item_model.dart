import '../../../core/app_export.dart';

/// This class is used in the [widget_item_widget] screen.
class WidgetItemModel {
  WidgetItemModel({
    this.imageFiftySix,
    this.id,
  }) {
    imageFiftySix = imageFiftySix ?? Rx(ImageConstant.imgImage56);
     imageFiftySix = imageFiftySix ?? Rx(ImageConstant.imgImage23);
    id = id ?? Rx("");
  }
  Rx<String>? imageFiftySix;
  Rx<String>? id;
}
