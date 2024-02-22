import '../../../core/app_export.dart';/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {Productcard1ItemModel({this.productImage, this.favoriteImage, this.productName, this.priceLabel, this.priceValue, this.discountedPriceValue, this.ratingCount, this.id, }) { productImage = productImage  ?? Rx(ImageConstant.imgImage26);favoriteImage = favoriteImage  ?? Rx(ImageConstant.imgFavoriteOnprimary);productName = productName  ?? Rx("Ice Green Tea");priceLabel = priceLabel  ?? Rx("Price");priceValue = priceValue  ?? Rx("2.50");discountedPriceValue = discountedPriceValue  ?? Rx("1.50");ratingCount = ratingCount  ?? Rx("302 rating");id = id  ?? Rx(""); }

Rx<String>? productImage;

Rx<String>? favoriteImage;

Rx<String>? productName;

Rx<String>? priceLabel;

Rx<String>? priceValue;

Rx<String>? discountedPriceValue;

Rx<String>? ratingCount;

Rx<String>? id;

 }
