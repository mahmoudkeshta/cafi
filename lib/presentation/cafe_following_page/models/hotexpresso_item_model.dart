import '../../../core/app_export.dart';/// This class is used in the [hotexpresso_item_widget] screen.
class HotexpressoItemModel {HotexpressoItemModel({this.hotExpresso, this.favorite, this.hotExpresso1, this.price, this.price1, this.price2, this.ratingCounter, this.id, }) { hotExpresso = hotExpresso  ?? Rx(ImageConstant.imgImage27);favorite = favorite  ?? Rx(ImageConstant.imgFavoriteOnprimary);hotExpresso1 = hotExpresso1  ?? Rx("Hot Expresso");price = price  ?? Rx("Price");price1 = price1  ?? Rx("3.20");price2 = price2  ?? Rx("2.20");ratingCounter = ratingCounter  ?? Rx("92 rating");id = id  ?? Rx(""); }

Rx<String>? hotExpresso;

Rx<String>? favorite;

Rx<String>? hotExpresso1;

Rx<String>? price;

Rx<String>? price1;

Rx<String>? price2;

Rx<String>? ratingCounter;

Rx<String>? id;

 }
