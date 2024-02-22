import '../../../core/app_export.dart';/// This class is used in the [pickup_item_widget] screen.
class PickupItemModel {PickupItemModel({this.mochaFrappe, this.mochaFrappe1, this.itemsCounter, this.price, this.id, }) { mochaFrappe = mochaFrappe  ?? Rx(ImageConstant.imgImage20100x100);mochaFrappe1 = mochaFrappe1  ?? Rx("Mocha Frappe");itemsCounter = itemsCounter  ?? Rx("3 Items");price = price  ?? Rx("3.50");id = id  ?? Rx(""); }

Rx<String>? mochaFrappe;

Rx<String>? mochaFrappe1;

Rx<String>? itemsCounter;

Rx<String>? price;

Rx<String>? id;

 }
