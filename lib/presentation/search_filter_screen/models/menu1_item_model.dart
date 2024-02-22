import '../../../core/app_export.dart';/// This class is used in the [menu1_item_widget] screen.
class Menu1ItemModel {Menu1ItemModel({this.menuImage1, this.menuText1, this.menuText2, this.menuText3, this.menuText4, this.menuText5, this.id, }) { menuImage1 = menuImage1  ?? Rx(ImageConstant.imgRectangle190);menuText1 = menuText1  ?? Rx("Mocha Frappe");menuText2 = menuText2  ?? Rx("Price");menuText3 = menuText3  ?? Rx("2.50");menuText4 = menuText4  ?? Rx("1.50");menuText5 = menuText5  ?? Rx("212 rating");id = id  ?? Rx(""); }

Rx<String>? menuImage1;

Rx<String>? menuText1;

Rx<String>? menuText2;

Rx<String>? menuText3;

Rx<String>? menuText4;

Rx<String>? menuText5;

Rx<String>? id;

 }
