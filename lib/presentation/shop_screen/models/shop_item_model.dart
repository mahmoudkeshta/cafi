import '../../../core/app_export.dart';/// This class is used in the [shop_item_widget] screen.
class ShopItemModel {ShopItemModel({this.mochaFrappe, this.favorite, this.mochaFrappe1, this.price, this.price1, this.price2, this.ratingCounter, this.id, }) { mochaFrappe = mochaFrappe  ?? Rx(ImageConstant.imgImage20);favorite = favorite  ?? Rx(ImageConstant.imgFavorite);mochaFrappe1 = mochaFrappe1  ?? Rx("Mocha Frappe");price = price  ?? Rx("Price");price1 = price1  ?? Rx("3.50");price2 = price2  ?? Rx("5.50");ratingCounter = ratingCounter  ?? Rx("152 rating");id = id  ?? Rx(""); }

Rx<String>? mochaFrappe;

Rx<String>? favorite;

Rx<String>? mochaFrappe1;

Rx<String>? price;

Rx<String>? price1;

Rx<String>? price2;

Rx<String>? ratingCounter;

Rx<String>? id;

 }
