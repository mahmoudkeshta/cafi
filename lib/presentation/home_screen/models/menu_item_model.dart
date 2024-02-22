import '../../../core/app_export.dart';/// This class is used in the [menu_item_widget] screen.
class MenuItemModel {MenuItemModel({this.image1, this.image2, this.text1, this.text2, this.text3, this.text4, this.image3, this.image4, this.image5, this.image6, this.text5, this.id, }) { image1 = image1  ?? Rx(ImageConstant.imgImage20);image2 = image2  ?? Rx(ImageConstant.imgFavorite);text1 = text1  ?? Rx("Mocha Frappe");text2 = text2  ?? Rx("Price");text3 = text3  ?? Rx("5.50");text4 = text4  ?? Rx("3.50");image3 = image3  ?? Rx(ImageConstant.imgSignal);image4 = image4  ?? Rx(ImageConstant.imgSignal);image5 = image5  ?? Rx(ImageConstant.imgSignalBlack900);image6 = image6  ?? Rx(ImageConstant.imgSignalBlack900);text5 = text5  ?? Rx("152 rating");id = id  ?? Rx(""); }

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? text3;

Rx<String>? text4;

Rx<String>? image3;

Rx<String>? image4;

Rx<String>? image5;

Rx<String>? image6;

Rx<String>? text5;

Rx<String>? id;

 }
