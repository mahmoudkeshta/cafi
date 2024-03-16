import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'controller/cafe_following_controller.dart';
import 'models/cafe_following_model.dart';
import 'models/hotexpresso_item_model.dart';
import 'models/userprofile10_item_model.dart';
import 'models/userprofile9_item_model.dart';
import 'widgets/hotexpresso_item_widget.dart';
import 'widgets/userprofile10_item_widget.dart';
import 'widgets/userprofile9_item_widget.dart';

// ignore_for_file: must_be_immutable
class CafeFollowingPage extends StatelessWidget {
  CafeFollowingPage({Key? key}) : super(key: key);
  CafeFollowingController controller =
      Get.put(CafeFollowingController(CafeFollowingModel().obs));
  @override
  Widget build(BuildContext context) {
    
     FirebaseAuth _auth=FirebaseAuth.instance;
     CollectionReference order = FirebaseFirestore.instance.collection('order');
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text("lbl_shop".tr,
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 6.v),
                    //  _buildUserProfile(),
                      SizedBox(height: 23.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text("lbl_coupon".tr,
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 6.v),
                      _buildUserProfile1(),
                      SizedBox(height: 18.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text("lbl_coffee".tr,
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 11.v),
                    //  _buildFavorite(),
                      SizedBox(height: 10.v),
                     // _buildHotExpresso(),
                      SizedBox(height: 40.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgClosePrimary65x65,
                          height: 65.adaptSize,
                          width: 65.adaptSize),
                      SizedBox(height: 2.v),
                      Text("lbl_loading".tr, style: theme.textTheme.titleMedium)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 25.h, top: 66.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(top: 54.v, bottom: 9.v),
            hintText: "lbl_search_shop2".tr,
            controller: controller.searchController),
        actions: [
          Container(
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.only(left: 24.h, top: 74.v, right: 26.h),
              decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  borderRadius: BorderRadius.circular(4.h))),
          Container(
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.only(left: 2.h, top: 74.v, right: 26.h),
              decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  borderRadius: BorderRadius.circular(4.h))),
          Container(
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.only(left: 2.h, top: 74.v, right: 50.h),
              decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  borderRadius: BorderRadius.circular(4.h)))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 121.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.h),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.cafeFollowingModelObj.value
                    .userprofile9ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile9ItemModel model = controller.cafeFollowingModelObj
                      .value.userprofile9ItemList.value[index];
                  return Userprofile9ItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildUserProfile1() {
      CollectionReference order = FirebaseFirestore.instance.collection('order');
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 100.v,
            child: 
           // Obx(() => 







            StreamBuilder(
              stream: users.snapshots(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                      dynamic data=snapshot.data!;
                      if (snapshot.hasError) {
          return Center(child: Text("Something went wrong"));
                              }

                   if(snapshot.connectionState == ConnectionState.waiting){
                 return Center(
                  child: CircularProgressIndicator(),
                 ) ;  };
                return ListView.separated(
                    padding: EdgeInsets.only(left: 2.h),
                    scrollDirection: Axis.horizontal,
                    
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10.h);
                    },
                    itemCount: snapshot.data.docs.length,
                    //controller.cafeFollowingModelObj.value
                      //  .userprofile10ItemList.value.length,
                    itemBuilder: (context, index) {
          
                      /**
                       * Userprofile10ItemModel model = controller
                          .cafeFollowingModelObj
                          .value
                          .userprofile10ItemList
                          .value[index];
                       */
                          dynamic item1=data.docs[index];
                      return Userprofile10ItemWidget(item1:item1);
                    });
                    
              }
            )





            
               // )
                )
                );
  }

  /// Section Widget
  Widget _buildFavorite() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
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
                        priceText1: "lbl_3_50".tr,
                        priceText2: "lbl_5_50".tr,
                        signalImage4: ImageConstant.imgSignalBlack900,
                        ratingCounterText: "lbl_152_rating".tr)
                  ])),
          Container(
              margin: EdgeInsets.only(left: 20.h),
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
                                  imagePath: ImageConstant.imgImage26,
                                  height: 150.adaptSize,
                                  width: 150.adaptSize,
                                  radius: BorderRadius.circular(20.h),
                                  alignment: Alignment.center),
                              CustomImageView(
                                  imagePath: ImageConstant.imgFavoriteOnprimary,
                                  height: 16.v,
                                  width: 18.h,
                                  alignment: Alignment.topRight,
                                  margin:
                                      EdgeInsets.only(top: 14.v, right: 15.h))
                            ]))),
                    SizedBox(height: 10.v),
                    Text("lbl_ice_green_tea".tr,
                        style: theme.textTheme.titleMedium),
                    _buildPrice(
                        priceText: "lbl_price".tr,
                        priceText1: "lbl_1_50".tr,
                        priceText2: "lbl_2_50".tr,
                        signalImage4: ImageConstant.imgSignal,
                        ratingCounterText: "lbl_302_rating".tr)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildHotExpresso() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 249.v,
                crossAxisCount: 2,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 20.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .cafeFollowingModelObj.value.hotexpressoItemList.value.length,
            itemBuilder: (context, index) {
              HotexpressoItemModel model = controller
                  .cafeFollowingModelObj.value.hotexpressoItemList.value[index];
              return HotexpressoItemWidget(model);
            })));
  }

  /// Common widget
  Widget _buildPrice({
    required String priceText,
    required String priceText1,
    required String priceText2,
    required String signalImage4,
    required String ratingCounterText,
  }) {
    return SizedBox(
        width: 150.h,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(priceText,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: appTheme.black900)),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 43.h,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSignal,
                                              height: 10.v,
                                              width: 11.h,
                                              margin:
                                                  EdgeInsets.only(right: 2.h))),
                                      Expanded(
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSignal,
                                              height: 10.v,
                                              width: 11.h,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 2.h))),
                                      Expanded(
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSignal,
                                              height: 10.v,
                                              width: 11.h,
                                              margin:
                                                  EdgeInsets.only(left: 2.h)))
                                    ])))
                      ])),
              SizedBox(
                  height: 40.v,
                  width: 102.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(priceText1,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: appTheme.black900))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(priceText2,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    color: appTheme.black900)))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 6.v),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: signalImage4,
                                  height: 10.v,
                                  width: 11.h),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignalBlack900,
                                  height: 10.v,
                                  width: 11.h,
                                  margin: EdgeInsets.only(left: 5.h))
                            ]))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(ratingCounterText,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: appTheme.amberA400)))
                  ]))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
