import '../../../core/app_export.dart';/// This class is used in the [reviewselect_item_widget] screen.
class ReviewselectItemModel {ReviewselectItemModel({this.amakadoHot, this.amakadoHot1, this.itemsCounter, this.price, this.id, }) { amakadoHot = amakadoHot  ?? Rx(ImageConstant.imgImage28120x120);amakadoHot1 = amakadoHot1  ?? Rx("Amakado Hot");itemsCounter = itemsCounter  ?? Rx("2 Items");price = price  ?? Rx("5.50");id = id  ?? Rx(""); }

Rx<String>? amakadoHot;

Rx<String>? amakadoHot1;

Rx<String>? itemsCounter;

Rx<String>? price;

Rx<String>? id;

 }
