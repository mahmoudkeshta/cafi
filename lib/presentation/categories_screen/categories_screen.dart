import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/cart_screen/controller/cart_controller.dart';
import 'package:coffee_app/presentation/home_screen/controller/home_controller.dart';
import 'package:coffee_app/presentation/home_screen/models/dynamictext_item_model.dart';
import 'package:coffee_app/presentation/home_screen/widgets/menu_item_widget.dart';
import 'package:coffee_app/presentation/search_filter_screen/widgets/productcard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_title_edittext.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import 'package:flutter/widgets.dart';
import 'controller/categories_controller.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
  
   CategoriesScreen(   {Key? key
  ,
  }) : super(key: key);
  final  model=Get.arguments;
 final  item=Get.arguments;
  @override
  Widget build(BuildContext context) {
      CartController5 cartController5=Get.put(CartController5(),permanent: true);
     CollectionReference order = FirebaseFirestore.instance.collection('order');
   
   
    
   
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: InkWell(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(//"lbl_frappe".tr,
                               // "k",
                              model.dynamicText!.value,
                                    style:
                                        CustomTextStyles.headlineSmallBlack900_2),
                              //  SizedBox(height: 6.v),
                             //   _buildFavoriteRow(),
                             //   SizedBox(height: 10.v),
                             //   _buildFavoriteRow1(),
                             //   SizedBox(height: 10.v),
                            //    _buildFavoriteRow2()
                            
                          _buildProductCard(),
                          
                         //  Text(item.dynamicText.value,) ,
         
        
                          
                              ]),
                       
                        
                        )
                        )))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 112.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 25.h, top: 66.v, bottom: 24.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitleEdittext(
            margin: EdgeInsets.only(top: 54.v, bottom: 13.v),
            hintText: "lbl_search".tr,
            
            controller: controller.searchController
            ),
        actions: [
          GestureDetector(
            child: AppbarTrailingImage(
                imagePath: ImageConstant.imgSend,
                margin: EdgeInsets.fromLTRB(24.h, 65.v, 24.h, 23.v)),
         onTap: (){
           Get.toNamed(AppRoutes.settingScreen);
         },
          ),
         
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildFavoriteRow() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Row(children: [
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
                    Text( 
                      //dynamictextItemModelObj.dynamicText!.value,
                      "lbl_mocha_frappe".tr,
                      //"m",
                     // model.dynamicText!.value,
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
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Text("lbl_1_50".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 49.h),
                                                child: Text("lbl_2_50".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge!
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text("lbl_152_rating".tr,
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
                  ])),
          Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
              decoration: AppDecoration.fillBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    _buildMaskStack(
                        imageFiftyEight: ImageConstant.imgImage57,
                        favorite: ImageConstant.imgFavorite),
                    SizedBox(height: 12.v),
                    Text("lbl_caramel_frappe".tr,
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
                                            child: Text("lbl_2_20".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Text("lbl_4_20".tr,
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text("lbl_92_rating".tr,
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
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFavoriteRow1() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Row(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
              decoration: AppDecoration.fillBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    _buildMaskStack(
                        imageFiftyEight: ImageConstant.imgImage58,
                        favorite: ImageConstant.imgFavoriteOnprimary),
                    SizedBox(height: 12.v),
                    Text("lbl_cold_frappe".tr,
                        style: theme.textTheme.titleMedium),
                    Row(children: [
                      Text("lbl_price".tr, style: theme.textTheme.bodyLarge),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("lbl_5_25".tr,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                  decoration: TextDecoration.lineThrough))),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("lbl_3_25".tr,
                              style: theme.textTheme.bodyLarge))
                    ]),
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
                  ])),
          Container(
              margin: EdgeInsets.only(left: 10.h),
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
                                  imagePath: ImageConstant.imgImage59,
                                  height: 150.v,
                                  width: 147.h,
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
                    SizedBox(height: 9.v),
                    Text("lbl_white_mocha".tr,
                        style: theme.textTheme.titleMedium),
                    SizedBox(
                        height: 40.v,
                        width: 150.h,
                        child: Stack(alignment: Alignment.topRight, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("lbl_price".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Align(
                              alignment: Alignment.topRight,
                              child: Text("lbl_1_24".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("lbl_2_24".tr,
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                      decoration: TextDecoration.lineThrough))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  width: 150.h,
                                  margin: EdgeInsets.only(top: 22.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 1.v, bottom: 6.v),
                                            child: CustomRatingBar(
                                                initialRating: 0,
                                                color: appTheme.black900
                                                    .withOpacity(0.1))),
                                        Text("lbl_92_rating".tr,
                                            style: theme.textTheme.bodyMedium)
                                      ])))
                        ]))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFavoriteRow2() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Row(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
              decoration: AppDecoration.fillBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    _buildMaskStack(
                        imageFiftyEight: ImageConstant.imgImage60,
                        favorite: ImageConstant.imgFavoriteOnprimary),
                    SizedBox(height: 12.v),
                    SizedBox(
                        height: 58.v,
                        width: 150.h,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("lbl_vegan_frappe".tr,
                                  style: theme.textTheme.titleMedium)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 13.v),
                                  child: Text("lbl_price".tr,
                                      style: theme.textTheme.bodyLarge))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 13.v),
                                  child: Text("lbl_2_50".tr,
                                      style: theme.textTheme.bodyLarge))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      right: 49.h, bottom: 16.v),
                                  child: Text("lbl_3_50".tr,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(
                                              decoration: TextDecoration
                                                  .lineThrough)))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("lbl_152_rating".tr,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodyMedium)),
                          Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: CustomRatingBar(
                                  alignment: Alignment.bottomLeft,
                                  initialRating: 2,
                                  itemCount: 3,
                                  color: appTheme.black900.withOpacity(0.1)))
                        ]))
                  ])),
          Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
              decoration: AppDecoration.fillBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    _buildMaskStack(
                        imageFiftyEight: ImageConstant.imgImage61,
                        favorite: ImageConstant.imgFavoriteOnprimary),
                    SizedBox(height: 9.v),
                    Text("lbl_vanilla_latte".tr,
                        style: theme.textTheme.titleMedium),
                    SizedBox(
                        height: 37.v,
                        width: 150.h,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("lbl_price".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 37.v,
                                  width: 150.h,
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Text("lbl_0_75".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 52.h),
                                                child: Text("lbl_1_15".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge!
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text("lbl_92_rating".tr,
                                                textAlign: TextAlign.right,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 3.v),
                                            child: CustomRatingBar(
                                                alignment: Alignment.bottomLeft,
                                                initialRating: 0,
                                                color: appTheme.black900
                                                    .withOpacity(0.1)))
                                      ])))
                        ]))
                  ]))
        ]));
  }

  /// Common widget
  Widget _buildMaskStack({
    required String imageFiftyEight,
    required String favorite,
  }) {
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
                  imagePath: imageFiftyEight,
                  height: 150.adaptSize,
                  width: 150.adaptSize,
                  radius: BorderRadius.circular(20.h),
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: favorite,
                  height: 16.v,
                  width: 18.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 14.v, right: 15.h))
            ])));
  }
  Widget _buildProductCard() {
    
    return SizedBox(
        height: 248.v,
        child: //Obx(() =>
         FutureBuilder(
          future: FirebaseFirestore.instance.collection('order').where(
            'productName',
            
            isEqualTo: item.dynamicText.value,
            
            // controller.searchController.text,
          
          ).get(),
             
          
           builder: (context,AsyncSnapshot snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
                 return Center(
                  child: CircularProgressIndicator(),
                 ) ;  };
             return ListView.separated(
                padding: EdgeInsets.only(left: 24.h, right: 34.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10.h);
                },
                itemCount: snapshot.data.docs.length,
            //controller.searchFilterModelObj.value.productcardItemList.value.length,
                itemBuilder: (context, index) {
                  dynamic item = snapshot.data.docs[index];
                  //ProductcardItemModel model = controller.searchFilterModelObj.value.productcardItemList.value[index];

                  return ProductcardItemWidget(item:item);
                });
           }
         ));
            //);
  }
  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
