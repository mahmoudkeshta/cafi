import '../../../core/app_export.dart';/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {ProductcardItemModel({this.productImage, this.productName, this.priceLabel, this.priceValue1, this.priceValue2, this.ratingLabel, this.id, }) { productImage = productImage  ?? Rx(ImageConstant.imgImage20);productName = productName  ?? Rx("Mocha Frappe");priceLabel = priceLabel  ?? Rx("Price");priceValue1 = priceValue1  ?? Rx("3.50");priceValue2 = priceValue2  ?? Rx("5.50");ratingLabel = ratingLabel  ?? Rx("152 rating");id = id  ?? Rx(""); }

Rx<String>? productImage;

Rx<String>? productName;

Rx<String>? priceLabel;

Rx<String>? priceValue1;

Rx<String>? priceValue2;

Rx<String>? ratingLabel;

Rx<String>? id;

 }
