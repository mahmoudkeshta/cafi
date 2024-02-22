import '../../../core/app_export.dart';import 'productcard_item_model.dart';import 'menu1_item_model.dart';/// This class defines the variables used in the [search_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchFilterModel {Rx<List<ProductcardItemModel>> productcardItemList = Rx([ProductcardItemModel(productImage:ImageConstant.imgImage20.obs,productName: "Mocha Frappe".obs,priceLabel: "Price".obs,priceValue1: "3.50".obs,priceValue2: "5.50".obs,ratingLabel: "152 rating".obs)]);

Rx<List<Menu1ItemModel>> menu1ItemList = Rx([Menu1ItemModel(menuImage1:ImageConstant.imgRectangle190.obs,menuText1: "Mocha Frappe".obs,menuText2: "Price".obs,menuText3: "2.50".obs,menuText4: "1.50".obs,menuText5: "212 rating".obs)]);

 }
