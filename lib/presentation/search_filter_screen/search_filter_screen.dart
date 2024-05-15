import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cafe_following_page/cafe_following_page.dart';
import 'package:coffee_app/widgets/custom_bottom_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_search_view.dart';
import 'controller/search_filter_controller.dart';
import 'models/menu1_item_model.dart';
import 'models/productcard_item_model.dart';
import 'widgets/menu1_item_widget.dart';
import 'widgets/productcard_item_widget.dart';

class SearchFilterScreen extends GetWidget<SearchFilterController> {
  
  const SearchFilterScreen({Key? key}) : super(key: key);
     
  @override
  Widget build(BuildContext context)  {
    
TextEditingController searchController= TextEditingController();
 SearchFilterController search= Get.put(SearchFilterController());
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildTopbar(),


                  SizedBox(height: 20.v),
                 
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Row(children: [
               /**
                *  */   
                            
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20.h, top: 7.v, bottom: 2.v),
                                child: Text("lbl_shop".tr,
                                    style: CustomTextStyles
                                        .titleLargeBlack900SemiBold))
                          ]))
                          
                          ),
                  SizedBox(height: 20.v),
                  _buildAZ(),
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: _buildRecommend(
                          recommendText: "lbl_popular".tr,
                          seeAllText: "lbl_see_all2".tr)),
                  SizedBox(height: 6.v),
                  _buildProductCard(),
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: _buildRecommend(
                          recommendText: "lbl_recommend".tr,
                          seeAllText: "lbl_see_all2".tr)),
                  SizedBox(height: 10.v),
                  _buildMenu()
                ]))),
            bottomNavigationBar: _buildBottomBar()
            ),
            );
  }

  /// Section Widget
  Widget _buildTopbar() {
    
    return Container(
      
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack900,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                //  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  height: 22.v,
                  width: 27.h,
                  margin: EdgeInsets.only(top: 53.v, bottom: 10.v),
                  onTap: () {
                    onTapImgArrowLeft();
                    
                  }),
              Spacer(flex: 43),
              Padding(
                
                  padding: EdgeInsets.only(top: 41.v),
                  child: 
                  
                  CustomSearchView(
                          textStyle:TextStyle(color: Colors.black ),
                      width: 259.h,
                      controller: controller.searchController,
                      onChanged: (value) {
         
                   
                     controller.searchController.text=value;
                   
                        
                      },
                      hintText: "lbl_search".tr)),
                      
              Spacer(flex: 56),
              CustomImageView(
                 // imagePath: ImageConstant.imgSend,
                  height: 24.v,
                  width: 23.h,
                  margin: EdgeInsets.only(top: 52.v, bottom: 9.v))
            ]));
  }

  /// Section Widget
  Widget _buildAZ() {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 24.h),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 35.v,
                  width: 82.h,
                  margin: EdgeInsets.only(top: 1.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 35.v,
                            width: 82.h,
                            decoration: BoxDecoration(
                                color: appTheme.black900.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(6.h)))),
                    Align(
                        alignment: Alignment.center,
                        child: Text("lbl_best_sell".tr,
                            style: CustomTextStyles.titleMediumMedium))
                  ])),
              Container(
                  width: 70.h,
                  margin: EdgeInsets.only(left: 10.h, top: 1.v),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.v),
                  decoration: AppDecoration.pink
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder7),
                  child: Text("lbl_rating".tr,
                      style: CustomTextStyles.titleMediumOnPrimaryMedium)),
              Container(
                  width: 84.h,
                  margin: EdgeInsets.only(left: 10.h, top: 1.v),
                  padding: EdgeInsets.all(5.h),
                  decoration: AppDecoration.fillBlack9001
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder7),
                  child:
                   Text("lbl_discount".tr,
                      style: CustomTextStyles.titleMediumMedium)),
              CustomElevatedButton(
                  height: 35.v,
                  width: 56.h,
                  text: "lbl_a_z".tr,
                  margin: EdgeInsets.only(left: 10.h, top: 1.v),
                  buttonStyle: CustomButtonStyles.fillBlack,
                  buttonTextStyle: CustomTextStyles.titleMediumMedium),
              CustomElevatedButton(
                  height: 35.v,
                  width: 56.h,
                  text: "lbl_z_a".tr,
                  margin: EdgeInsets.only(left: 10.h, top: 1.v),
                  buttonStyle: CustomButtonStyles.fillBlack,
                  buttonTextStyle: CustomTextStyles.titleMediumMedium),
              Container(
                  height: 35.v,
                  width: 84.h,
                  margin: EdgeInsets.only(left: 10.h),
                  decoration: BoxDecoration(
                      color: appTheme.black900.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6.h)))
            ]))));
  }

  /// Section Widget
  Widget _buildProductCard() {
    
    return SizedBox(
        height: 248.v,
        child: //Obx(() =>
         FutureBuilder(
          future: FirebaseFirestore.instance.collection('order').where(
            'productName',
            isEqualTo: controller.searchController.text
          
          ).get(),
           builder: (context,AsyncSnapshot snapshot) {
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

  /// Section Widget
  Widget _buildMenu() {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 34.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount:controller.searchFilterModelObj.value.menu1ItemList.value.length,
            itemBuilder: (context, index) {
              Menu1ItemModel model = controller
                  .searchFilterModelObj.value.menu1ItemList.value[index];
              return Menu1ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildRecommend({
    required String recommendText,
    required String seeAllText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(recommendText,
          style: CustomTextStyles.headlineSmallBlack900_2
              .copyWith(color: appTheme.black900)),
      Padding(
          padding: EdgeInsets.only(top: 7.v, bottom: 6.v),
          child: Text(seeAllText,
              style: CustomTextStyles.bodyLargeIndigoA700
                  .copyWith(color: appTheme.indigoA700)))
    ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.cafeFollowingPage;
      case BottomBarEnum.Orders:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cafeFollowingPage:
        return CafeFollowingPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
