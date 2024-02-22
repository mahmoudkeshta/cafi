import '../../../core/app_export.dart';
import 'widget_item_model.dart';
import 'dynamictext_item_model.dart';
import 'off_item_model.dart';
import 'userprofile1_item_model.dart';
import 'claimcoupontext_item_model.dart';
import 'menu_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<WidgetItemModel>> widgetItemList = Rx([
    WidgetItemModel(imageFiftySix: ImageConstant.imgImage56.obs),
    WidgetItemModel(imageFiftySix: ImageConstant.imgImage11.obs),
    WidgetItemModel(imageFiftySix: ImageConstant.imgImage10.obs)
  ]);
  Rx<List<DynamictextItemModel>> dynamictextItemList = Rx([
    DynamictextItemModel(
        dynamicImage: ImageConstant.imgImage12.obs, dynamicText: "Ice".obs),
    DynamictextItemModel(
        dynamicImage: ImageConstant.imgImage13.obs, dynamicText: "Hot".obs),
    DynamictextItemModel(
        dynamicImage: ImageConstant.imgImage14.obs, dynamicText: "Tea".obs),
    DynamictextItemModel(dynamicText: "Frappe".obs)
  ]);
  Rx<List<OffItemModel>> offItemList = Rx([
    OffItemModel(
        off: ImageConstant.imgImage17.obs,
        offer: "50% OFF".obs,
        price: "Price 5 up".obs),
    OffItemModel(
        off: ImageConstant.imgImage18.obs,
        offer: "50% OFF".obs,
        price: "Price 2 up".obs),
    OffItemModel(
        off: ImageConstant.imgImage19.obs,
        offer: "50% OFF".obs,
        price: "Price 2 up".obs)
  ]);
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        circleImage: ImageConstant.imgImage1685x85.obs,
        textStarbucks: "Starbucks".obs,
        textRating: "8.1 Rating".obs,
        textFollow: "Follow".obs,
        textFollowers: "10K".obs
        
        ),
    Userprofile1ItemModel(
        circleImage: ImageConstant.imgEllipse2085x85.obs,
        textStarbucks: "Amazon".obs,
        textRating: "5.1 Rating".obs,
        textFollow: "Follow".obs,
        textFollowers: "10K".obs),
    Userprofile1ItemModel(
        circleImage: ImageConstant.imgEllipse202.obs,
        textStarbucks: "Luna".obs,
        textRating: "7.1 Rating".obs,
        textFollowers: "92K".obs),
    Userprofile1ItemModel(
        circleImage: ImageConstant.imgEllipse203.obs,
        textStarbucks: "Brown".obs,
        textRating: "9.1 Rating".obs,
        textFollow: "Follow".obs,
        textFollowers: "10K".obs)
        
  ]);
  Rx<List<ClaimcoupontextItemModel>> claimcoupontextItemList = Rx([
    ClaimcoupontextItemModel(
        claimCouponText: "Claim Coupon".obs,
        freeAmountText: "10 20 30 Free".obs),
    ClaimcoupontextItemModel(
        claimCouponText: "Invite".obs, freeAmountText: "Friend or Family".obs)
  ]);
  Rx<List<MenuItemModel>> menuItemList = Rx([
    MenuItemModel(
        image1: ImageConstant.imgImage20.obs,
        image2: ImageConstant.imgFavorite.obs,
        text1: "Mocha Frappe".obs,
        text2: "Price".obs,
        text3: "5.50".obs,
        text4: "3.50".obs,
        image3: ImageConstant.imgSignal.obs,
        image4: ImageConstant.imgSignal.obs,
        image5: ImageConstant.imgSignalBlack900.obs,
        image6: ImageConstant.imgSignalBlack900.obs,
        text5: "152 rating".obs),
    MenuItemModel(
        image1: ImageConstant.imgImage27.obs,
        image2: ImageConstant.imgFavoriteOnprimary.obs,
        text1: "Hot Expresso".obs,
        text2: "Price".obs,
        text3: "3.20".obs,
        text4: "2.20".obs),
    MenuItemModel(
        image1: ImageConstant.imgImage28.obs,
        image2: ImageConstant.imgFavorite.obs,
        text1: "Amakado Hot".obs,
        text2: "Price".obs,
        text3: "3.50".obs,
        text4: "2.50".obs),
    MenuItemModel(
        image1: ImageConstant.imgImage26.obs,
        image2: ImageConstant.imgFavoriteOnprimary.obs,
        text1: "Ice Green Tea".obs,
        text2: "Price".obs,
        text3: "2.50".obs,
        text4: "1.50".obs)
  ]);
}
