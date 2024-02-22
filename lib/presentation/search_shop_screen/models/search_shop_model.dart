import '../../../core/app_export.dart';import 'userprofile2_item_model.dart';/// This class defines the variables used in the [search_shop_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchShopModel {Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([Userprofile2ItemModel(starbucksImage:ImageConstant.imgRectangle192.obs,starbucksCircleImage:ImageConstant.imgImage1685x85.obs,starbucksText: "Starbucks".obs,ratingText: "8.1 Rating".obs,followerCountText: "10K".obs),Userprofile2ItemModel(starbucksImage:ImageConstant.imgRectangle194.obs,starbucksCircleImage:ImageConstant.imgEllipse203.obs,starbucksText: "Brown".obs,ratingText: "8.1 Rating".obs,followerCountText: "10K".obs),Userprofile2ItemModel(starbucksImage:ImageConstant.imgRectangle125.obs,starbucksCircleImage:ImageConstant.imgEllipse202.obs,starbucksText: "Luna".obs,ratingText: "8.1 Rating".obs,followerCountText: "10K".obs)]);

 }
