import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/cart_screen/controller/cart_controller.dart';
import 'package:coffee_app/presentation/cart_screen/controller/cart_controller.dart';
import 'package:coffee_app/presentation/order_success_screen/services/c1.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'models/menu2_item_model.dart';
import 'package:flutter/material.dart';
import 'models/jokiboy_item_model.dart';
import 'widgets/menu2_item_widget.dart';
import 'widgets/jokiboy_item_widget.dart';
import 'controller/product_controller.dart';
import 'models/sizeselector_item_model.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_radio_button.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_outlined_button.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';

import 'widgets/sizeselector_item_widget.dart';

class ProductScreen extends GetWidget<ProductController> {
  final item = Get.arguments;
       cart_controller cart_con=Get.put(cart_controller(),permanent: true);
         final CartController5 cartController5 = Get.put<CartController5>(CartController5());
   ProductScreen(  {Key? key,
  
  
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
     CollectionReference  order = FirebaseFirestore.instance.collection('order');
      CollectionReference  users = FirebaseFirestore.instance.collection('users');
    
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildView(),
                  SizedBox(height: 23.v),
                  _buildMochaFrappe(),
                  SizedBox(height: 7.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                          opacity: 0.5,
                          child: Container(
                              width: 328.h,
                              margin: EdgeInsets.only(left: 24.h, right: 75.h),
                              child: Text(
                               item['productName'],
                            //  "msg_lorem_ipsum_is_simply2".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      CustomTextStyles.bodyLargeBlack900_2)))),
                  SizedBox(height: 6.v),
                  _buildPrice(),
                  SizedBox(height: 20.v),
                  Divider(color: theme.colorScheme.primary),
                  SizedBox(height: 19.v),
                  _buildSizeSelector(),
                  SizedBox(height: 17.v),
                  _buildAddToCart(),
                  SizedBox(height: 9.v),
                 // _buildOneHundred(),
                  //SizedBox(height: 23.v),
                  
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_sugar".tr,
                              style: CustomTextStyles
                                  .headlineSmallBlack900Medium))),
                  SizedBox(height: 6.v),
                  _buildSugar(),
                 // SizedBox(height: 2.v),
                   add_to_cart(),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: 
                          Text("lbl_related_coffee".tr,
                          
                              style:
                                  CustomTextStyles.headlineSmallBlack900_2))),
                  SizedBox(height: 20.v),
                  _buildMenu(),
                  SizedBox(height: 30.v),
                  _buildFollow(),
                  SizedBox(height: 29.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_revieS".tr,
                              style: CustomTextStyles
                                  .headlineSmallBlack900Medium))),
                  SizedBox(height: 10.v),
                 // _buildJokiboy(),
                //  SizedBox(height: 30.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgClosePrimary65x65,
                      height: 65.adaptSize,
                      width: 65.adaptSize),
                  SizedBox(height: 2.v),
                  Text("lbl_loading".tr,
                      style: CustomTextStyles.titleMediumBlack900_1),
                  SizedBox(height: 2.v)
                ])))));
  }

  /// Section Widget
  Widget _buildView() {
    return SizedBox(
        height: 452.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 52.v,
                 width: double.maxFinite,
                  decoration: BoxDecoration(color: theme.colorScheme.primary,
               
                  
                  
                  )
                  )
                  ),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 452.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath:
                        
                        cartController5.itemData1.value= item['productImages'],
                        // ImageConstant.imgMaskGroup452x428,
                        height: 452.v,
                        width: 428.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 452.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 452.v,
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(0.5, -0.02),
                                                  end: Alignment(0.5, 0.16),
                                                  colors: [
                                              //  appTheme.black900,
                                               // appTheme.black900.withOpacity(0)
                                              ]))
                                              )
                                              ),
                                  CustomAppBar(
                                      height: 96.v,
                                      leadingWidth: 53.h,
                                      leading: AppbarLeadingImage(
                                         imagePath: ImageConstant
                                              .imgArrowLeftOnprimary,
                                          margin: EdgeInsets.only(
                                              left: 26.h, bottom: 8.v),
                                          onTap: () {
                                            onTapArrowLeft();
                                          }),
                                      actions: [
                                        AppbarTrailingImage(
                                            imagePath:
                                                ImageConstant.imgFavorite,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 24.h))
                                      ])
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildMochaFrappe() {
   final CartController5 cartController5 = Get.put<CartController5>(CartController5());

    return Padding(
      
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                 //'${cartController1.item.value}',
             cartController5.itemData.value =item['productName'],
                //"lbl_mocha_frappe".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2),
              Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 4.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 18.v,
                            width: 19.h,
                            margin: EdgeInsets.only(top: 2.v, bottom: 9.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_12_rating".tr,
                                style: CustomTextStyles.titleLargeAmberA400))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildPrice() {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 32.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Opacity(
              opacity: 0.75,
              child: Text(  
                cartController5.itemData2.value=item['fullPrice'],
                //"lbl_2_5".tr,
                  style: CustomTextStyles.displaySmallPrimaryBold
                      .copyWith(decoration: TextDecoration.lineThrough))),
          Opacity(
              opacity: 0.75,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  child: Text(
                    "lbl_discount".tr,
                   // item['fullPrice'],
                     // style: CustomTextStyles.headlineSmallBlack900
                      ))),
          Text("lbl_1_5".tr, style: CustomTextStyles.displaySmallPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildSizeSelector() {
        CollectionReference order = FirebaseFirestore.instance.collection('order');
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
        // Obx(() => 
        StreamBuilder(
          stream: order.snapshots(),
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
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 1.v);
                },
                itemCount: controller
                    .productModelObj.value.sizeselectorItemList.value.length,
                itemBuilder: (context, index) {
                  dynamic item=data.docs[index];
                  SizeselectorItemModel model = controller
                      .productModelObj.value.sizeselectorItemList.value[index];
                  return SizeselectorItemWidget(item:item
                  );
                }
                );
          }
        )
            //)
            );
  }

  /// Section Widget
  Widget _buildAddToCart() {
    return SizedBox(
        height: 157.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text("lbl_ice".tr,
                      style: CustomTextStyles.headlineSmallBlack900Medium))),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h, right: 324.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                      opacity: 0.75,
                                      child: Container(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.h),
                                              border: Border.all(
                                                  color: appTheme.black900
                                                      .withOpacity(0.44),
                                                  width: 2.h)))),
                                  Text("lbl_10".tr,
                                  
                                      style: theme.textTheme.titleLarge)
                                ])),
                        SizedBox(height: 9.v),
                        Align(
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                      opacity: 0.75,
                                      child: Container(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.h),
                                              border: Border.all(
                                                  color: appTheme.black900
                                                      .withOpacity(0.44),
                                                  width: 2.h)))),
                                  Opacity(
                                      opacity: 0.75,
                                      
                                      child: Text("lbl_20".tr,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2,
                                              ))
                                ]))
                      ]
                      )
                      )
                      ),
        
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Row(children: [
                    Opacity(
                        opacity: 0.75,
                        child: Container(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.h),
                                border: Border.all(
                                    color: appTheme.black900.withOpacity(0.44),
                                    width: 2.h)))),
                    Opacity(
                        opacity: 0.75,
                        child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text("lbl_50".tr,
                          
                                style: CustomTextStyles.titleLargeBlack900_2)))
                  ])))
        ]));
  }

  Align add_to_cart() {
       FirebaseAuth _auth=FirebaseAuth.instance;
    return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 10.v),//32
                padding: EdgeInsets.symmetric(vertical: 19.v),
                decoration: AppDecoration.gradientOnPrimaryToOnPrimary,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: CustomOutlinedButton(
                              text: "lbl_add_to_cart".tr,
                              margin:
                                  EdgeInsets.only(right: 9.h, bottom: 27.v),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle: CustomTextStyles
                                  .titleLargePrimarySemiBold,
                               
                                    onPressed: () async{
                                        try {
    String res = await c1().uploadOrder(
 productId: item['productId'], 
    productName: item['productName'].toString(),
     salePrice: item['salePrice'].toString(),
      fullPrice: item['fullPrice'].toString(), 
      createdAt: '',
       updatedAt: '',
       categoryName:item['categoryName'].toString(), 
       deliveryTime:item['deliveryTime'].toString(),
       productTotalPrice:5, 
       productImages:item['productImages'].toString(), 
       uid:_auth.currentUser!.uid.toString(), isSale: false,
       size: [item['size'][0].toString(),'n'], ice: [], sugar: [],
      // item1['uId'].toString(),
       
       );
  Get.toNamed(AppRoutes.cartScreen, arguments: item);
    // Handle success response if needed
  } catch (e) {
    // Handle any errors or exceptions that occur during upload
    print("Error uploading data: $e");
  }
                                      cart_controller().gotohome();
                                  },
                                  )
                                  
                                  ),
                      Expanded(
                          
                            child: CustomOutlinedButton(
                                text: "lbl_buy_now".tr,
                                margin:
                                    EdgeInsets.only(left: 9.h, bottom: 27.v),
                                buttonStyle:
                                    CustomButtonStyles.outlinePrimaryTL30,
                                buttonTextStyle: CustomTextStyles
                                    .titleLargeOnPrimarySemiBold,
                                    
                                    onPressed: () async{
                                        try {
    String res = await c1().uploadOrder(
      productId: item['productId'], 
    productName: item['productName'].toString(),
     salePrice: item['salePrice'].toString(),
      fullPrice: item['fullPrice'].toString(), 
      createdAt: '',
       updatedAt: '',
       categoryName:item['categoryName'].toString(), 
       deliveryTime:item['deliveryTime'].toString(),
       productTotalPrice:5, 
       productImages:item['productImages'].toString(), 
       uid:_auth.currentUser!.uid.toString(), isSale: false,
       size: [], ice: [], sugar: [],
      // item1['uId'].toString(),
       
       );
  Get.toNamed(AppRoutes.cartScreen, arguments: item);
    // Handle success response if needed
  } catch (e) {
    // Handle any errors or exceptions that occur during upload
    print("Error uploading data: $e");
  }

                                     // item.isSale = true;
                                           //item['isSale'] = true;
                                    
                              //     cart_controller().goToCart(item);
                                    },
                                    
                                    ),

                          )
                    ]
                    )
                    )
                    
                    );
                     
  }

  /// Section Widget
  Widget _buildOneHundred() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Obx(() => Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: CustomRadioButton(
                text: "lbl_1002".tr,
                value: "lbl_1002".tr,
                groupValue: controller.radioGroup.value,
                textStyle: CustomTextStyles.titleLargeBlack900_2,
                onChange: (value) {
                  controller.radioGroup.value = value;
                }))));
  }

  /// Section Widget
  Widget _buildSugar() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, right: 317.h),
            child: Obx(() => Column(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: CustomRadioButton(
                          text: "lbl_10".tr,
                          value: controller
                              .productModelObj.value.radioList.value[0],
                          groupValue: controller.sugar.value,
                          textStyle: CustomTextStyles.titleLargeBlack900_2,
                          onChange: (value) {
                            controller.sugar.value = value;
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 9.v, right: 6.h),
                      child: CustomRadioButton(
                          text: "lbl_50".tr,
                          value: controller
                              .productModelObj.value.radioList.value[1],
                          groupValue: controller.sugar.value,
                          textStyle: CustomTextStyles.titleLargeBlack900_2,
                          onChange: (value) {
                            controller.sugar.value = value;
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 9.v),
                      child: CustomRadioButton(
                          text: "lbl_1002".tr,
                          value: controller
                              .productModelObj.value.radioList.value[2],
                          groupValue: controller.sugar.value,
                          textStyle: theme.textTheme.titleLarge,
                          onChange: (value) {
                            controller.sugar.value = value;
                          }))
                ]))));
  }

  /// Section Widget
  Widget _buildMenu() {
    return SizedBox(
        height: 248.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 22.h);
            },
            itemCount:
                controller.productModelObj.value.menu2ItemList.value.length,
            itemBuilder: (context, index) {
              Menu2ItemModel model =
                  controller.productModelObj.value.menu2ItemList.value[index];
              return Menu2ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildFollow() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 20.v),
        decoration: AppDecoration.pink,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v),
            decoration: AppDecoration.fillBlack9003
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  padding: EdgeInsets.all(5.h),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder47),
                  child: Container(
                      height: 85.adaptSize,
                      width: 85.adaptSize,
                      decoration: BoxDecoration(
                        
                          borderRadius: BorderRadiusStyle.circleBorder40),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgImage1685x85,
                          height: 85.adaptSize,
                          width: 85.adaptSize,
                          radius: BorderRadius.circular(42.h),
                          alignment: Alignment.center))),
              Padding(
                  padding: EdgeInsets.only(left: 9.h, top: 11.v, bottom: 11.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_starbucks".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 10.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 16.v,
                                  width: 17.h,
                                  margin:
                                      EdgeInsets.only(top: 1.v, bottom: 6.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_8_1_rating".tr,
                                      style:
                                          CustomTextStyles.bodyLargeAmberA400))
                            ])
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 17.h, top: 13.v, bottom: 10.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                            height: 35.v,
                            width: 90.h,
                            text: "lbl_follow".tr,
                            buttonStyle: CustomButtonStyles.fillOnPrimary,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumIndigoA700,
                            alignment: Alignment.centerRight),
                        SizedBox(height: 12.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_10k_follower".tr,
                                style: CustomTextStyles.bodyLargeOnPrimary_1))
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildJokiboy() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount:
                controller.productModelObj.value.jokiboyItemList.value.length,
            itemBuilder: (context, index) {
              JokiboyItemModel model =
                  controller.productModelObj.value.jokiboyItemList.value[index];
              return JokiboyItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
