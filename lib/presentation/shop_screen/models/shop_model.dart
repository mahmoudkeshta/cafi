import '../../../core/app_export.dart';import 'widget1_item_model.dart';import 'dynamictext1_item_model.dart';import 'shop_item_model.dart';/// This class defines the variables used in the [shop_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShopModel {Rx<List<Widget1ItemModel>> widget1ItemList = Rx([Widget1ItemModel(imageTwentyThree:ImageConstant.imgImage23.obs),Widget1ItemModel(imageTwentyThree:ImageConstant.imgImage25.obs),Widget1ItemModel(imageTwentyThree:ImageConstant.imgImage24.obs)]);

Rx<List<Dynamictext1ItemModel>> dynamictext1ItemList = Rx([Dynamictext1ItemModel(dynamicImage:ImageConstant.imgImage12.obs,dynamicText: "Ice".obs),Dynamictext1ItemModel(dynamicImage:ImageConstant.imgImage13.obs,dynamicText: "Hot".obs),Dynamictext1ItemModel(dynamicImage:ImageConstant.imgImage14.obs,dynamicText: "Tea".obs),Dynamictext1ItemModel(dynamicText: "Frappe".obs)]);

Rx<List<ShopItemModel>> shopItemList = Rx([ShopItemModel(mochaFrappe:ImageConstant.imgImage20.obs,favorite:ImageConstant.imgFavorite.obs,mochaFrappe1: "Mocha Frappe".obs,price: "Price".obs,price1: "3.50".obs,price2: "5.50".obs,ratingCounter: "152 rating".obs),ShopItemModel(mochaFrappe:ImageConstant.imgImage26.obs,favorite:ImageConstant.imgFavoriteOnprimary.obs,mochaFrappe1: "Ice Green Tea".obs,price: "Price".obs,price1: "1.50".obs,price2: "2.50".obs,ratingCounter: "302 rating".obs)]);

 }
