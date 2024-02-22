import '../../../core/app_export.dart';/// This class is used in the [userprofile6_item_widget] screen.
class Userprofile6ItemModel {Userprofile6ItemModel({this.image, this.title, this.itemCount, this.price, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage20100x100);title = title  ?? Rx("Mocha Frappe");itemCount = itemCount  ?? Rx("3 Items");price = price  ?? Rx("3.50");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? itemCount;

Rx<String>? price;

Rx<String>? id;

 }
