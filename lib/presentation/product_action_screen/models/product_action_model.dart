import 'sizeselector1_item_model.dart';import '../../../core/app_export.dart';import 'productcard1_item_model.dart';import 'userprofile3_item_model.dart';/// This class defines the variables used in the [product_action_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductActionModel {Rx<List<Sizeselector1ItemModel>> sizeselector1ItemList = Rx(List.generate(1,(index) => Sizeselector1ItemModel()));

Rx<List<String>> radioList = Rx(["lbl_10","lbl_50","lbl_1002"]);

Rx<List<Productcard1ItemModel>> productcard1ItemList = Rx([Productcard1ItemModel(productImage:ImageConstant.imgImage26.obs,favoriteImage:ImageConstant.imgFavoriteOnprimary.obs,productName: "Ice Green Tea".obs,priceLabel: "Price".obs,priceValue: "2.50".obs,discountedPriceValue: "1.50".obs,ratingCount: "302 rating".obs),Productcard1ItemModel(productImage:ImageConstant.imgImage28.obs,favoriteImage:ImageConstant.imgFavorite.obs,productName: "Amakado Hot".obs,priceLabel: "Price".obs,priceValue: "3.50".obs,discountedPriceValue: "2.50".obs,ratingCount: "34 rating".obs)]);

Rx<List<Userprofile3ItemModel>> userprofile3ItemList = Rx([Userprofile3ItemModel(userImage:ImageConstant.imgEllipse31.obs,userName: "Joki boy".obs,ratingText: "8.1 Rating".obs,descriptionText: "Yummmy...".obs),Userprofile3ItemModel(userImage:ImageConstant.imgEllipse32.obs,userName: "Tommi".obs,ratingText: "3.1 Rating".obs,descriptionText: "Service isn’t so good!..".obs)]);

 }
