import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/home_screen/controller/home_controller.dart';
import 'package:coffee_app/presentation/home_screen/widgets/menu_item_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import 'controller/wishlist_controller.dart';

class WishlistScreen1 extends GetWidget<WishlistController> {
  final item1 = Get.arguments;
  
   WishlistScreen1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>HomeController());
        home_ControllerIme home_cont = Get.put(home_ControllerIme());
    FirebaseAuth _auth=FirebaseAuth.instance;
     CollectionReference Cart = FirebaseFirestore.instance.collection('Cart');
    return 
    SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v),
                child: Column(children: [
                  


                  
          StreamBuilder(
            stream:Cart.snapshots()  ,
             builder:  (BuildContext context, AsyncSnapshot snapshot)  {
              
            if (snapshot.hasError) {
          return Center(child: Text("Something went wrong"));
                              }

                   if(snapshot.connectionState == ConnectionState.waiting){
                       return Center(
                  child: CircularProgressIndicator(),
                 ) ; 

                   }
                    dynamic data = snapshot.data! as dynamic;


               return GridView.builder(
                
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 249.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 20.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:data.docs.length,
                  itemBuilder: (context, index) {
                     dynamic item= data.docs[index];
                     // controller.homeModelObj.value.menuItemList.value.length,
                /**
                 *   itemBuilder: (context, index) {
                    MenuItemModel model =
                        controller.homeModelObj.value.menuItemList.value[index];
                    return MenuItemWidget(model);
                 */
                      
                    return 
              item['uid']==item1['uId'] ?   MenuItemWidget(item: item):Container();

                 
                  },
                  );
                  }
                 
             
           
           ),
                  //_buildFavorite(),
                  SizedBox(height: 10.v),
                 // _buildFavorite2(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: item1['email'],
            //"lbl_wishlist".tr,
            margin: EdgeInsets.only(top: 58.v, bottom: 11.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSend,
              margin: EdgeInsets.fromLTRB(24.h, 67.v, 24.h, 18.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildFavorite() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
              decoration: AppDecoration.fillBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        color: theme.colorScheme.primaryContainer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder20),
                        child: Container(
                            height: 150.adaptSize,
                            width: 150.adaptSize,
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage20,
                                  height: 150.v,
                                  width: 148.h,
                                  radius: BorderRadius.circular(20.h),
                                  alignment: Alignment.center),
                              CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 16.v,
                                  width: 18.h,
                                  alignment: Alignment.topRight,
                                  margin:
                                      EdgeInsets.only(top: 14.v, right: 15.h))
                            ]))),
                    SizedBox(height: 12.v),
                    Text("lbl_mocha_frappe".tr,
                        style: theme.textTheme.titleMedium),
                    _buildPrice(
                        priceText: "lbl_price".tr,
                        priceValue1: "lbl_5_50".tr,
                        priceValue2: "lbl_3_50".tr),
                    SizedBox(
                        width: 150.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.v, bottom: 6.v),
                                  child: CustomRatingBar(
                                      initialRating: 0,
                                      color:
                                          appTheme.black900.withOpacity(0.1))),
                              Text("lbl_152_rating".tr,
                                  style: theme.textTheme.bodyMedium)
                            ]))
                  ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
              decoration: AppDecoration.fillBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    _buildMask(image27: ImageConstant.imgImage26),
                    SizedBox(height: 10.v),
                    Text("lbl_ice_green_tea".tr,
                        style: theme.textTheme.titleMedium),
                    _buildPrice(
                        priceText: "lbl_price".tr,
                        priceValue1: "lbl_2_50".tr,
                        priceValue2: "lbl_1_50".tr),
                    SizedBox(
                        width: 150.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.v, bottom: 6.v),
                                  child: CustomRatingBar(
                                      initialRating: 0,
                                      itemCount: 2,
                                      color:
                                          appTheme.black900.withOpacity(0.1))),
                              Text("lbl_302_rating".tr,
                                  style: theme.textTheme.bodyMedium)
                            ]))
                  ])))
    ]);
  }

  /// Section Widget
  Widget _buildFavorite2() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
              decoration: AppDecoration.fillBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(height: 6.v),
                _buildMask(image27: ImageConstant.imgImage27),
                SizedBox(height: 12.v),
                SizedBox(
                    height: 62.v,
                    width: 150.h,
                    child: Stack(alignment: Alignment.bottomLeft, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("lbl_hot_expresso".tr,
                              style: theme.textTheme.titleMedium)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 16.v),
                              child: Text("lbl_price".tr,
                                  style: theme.textTheme.bodyLarge))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              height: 40.v,
                              width: 150.h,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Text("lbl_2_20".tr,
                                            style: theme.textTheme.bodyLarge)),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Text("lbl_3_20".tr,
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text("lbl_92_rating".tr,
                                            style: theme.textTheme.bodyMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 6.v),
                                        child: CustomRatingBar(
                                            alignment: Alignment.bottomLeft,
                                            initialRating: 0,
                                            color: appTheme.black900
                                                .withOpacity(0.1)))
                                  ])))
                    ]))
              ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
              decoration: AppDecoration.fillBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    _buildMask(image27: ImageConstant.imgImage28),
                    SizedBox(height: 10.v),
                    Text("lbl_amakado_hot".tr,
                        style: theme.textTheme.titleMedium),
                    SizedBox(
                        height: 40.v,
                        width: 150.h,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("lbl_price".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 40.v,
                                  width: 150.h,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Text("lbl_2_50".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Text("lbl_3_50".tr,
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text("lbl_34_rating".tr,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 6.v),
                                            child: CustomRatingBar(
                                                alignment: Alignment.bottomLeft,
                                                initialRating: 0,
                                                color: appTheme.black900
                                                    .withOpacity(0.1)))
                                      ])))
                        ]))
                  ])))
    ]);
  }

  /// Common widget
  Widget _buildPrice({
    required String priceText,
    required String priceValue1,
    required String priceValue2,
  }) {
    return Row(children: [
      Text(priceText,
          style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.black900)),
      Padding(
          padding: EdgeInsets.only(left: 19.h),
          child: Text(priceValue1,
              style: theme.textTheme.bodyLarge!.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: appTheme.black900))),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(priceValue2,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Common widget
  Widget _buildMask({required String image27}) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 150.adaptSize,
            width: 150.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: image27,
                  height: 150.adaptSize,
                  width: 150.adaptSize,
                  radius: BorderRadius.circular(20.h),
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 16.v,
                  width: 18.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 14.v, right: 15.h))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
