import '../../../core/app_export.dart';/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {Userprofile4ItemModel({this.image, this.title, this.price, this.quantity, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage2080x77);title = title  ?? Rx("Mocha Frappe");price = price  ?? Rx("3.50");quantity = quantity  ?? Rx("1");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? price;

Rx<String>? quantity;

Rx<String>? id;

 }
