import '../../../core/app_export.dart';/// This class is used in the [menu2_item_widget] screen.
class Menu2ItemModel {Menu2ItemModel({this.image1, this.image2, this.text1, this.text2, this.text3, this.text4, this.text5, this.id, }) { image1 = image1  ?? Rx(ImageConstant.imgImage26);image2 = image2  ?? Rx(ImageConstant.imgFavoriteOnprimary);text1 = text1  ?? Rx("Ice Green Tea");text2 = text2  ?? Rx("Price");text3 = text3  ?? Rx("2.50");text4 = text4  ?? Rx("1.50");text5 = text5  ?? Rx("302 rating");id = id  ?? Rx(""); }

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? text3;

Rx<String>? text4;

Rx<String>? text5;

Rx<String>? id;

 }
