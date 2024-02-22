import '../../../core/app_export.dart';/// This class is used in the [off_item_widget] screen.
class OffItemModel {OffItemModel({this.off, this.offer, this.price, this.id, }) { off = off  ?? Rx(ImageConstant.imgImage17);offer = offer  ?? Rx("50% OFF");price = price  ?? Rx("Price 5 up");id = id  ?? Rx(""); }

Rx<String>? off;

Rx<String>? offer;

Rx<String>? price;

Rx<String>? id;

 }
