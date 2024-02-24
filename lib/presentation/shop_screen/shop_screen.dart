import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cafe_following_page/cafe_following_page.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_bottom_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/shop_controller.dart';
import 'models/dynamictext1_item_model.dart';
import 'models/shop_item_model.dart';
import 'models/widget1_item_model.dart';
import 'widgets/dynamictext1_item_widget.dart';
import 'widgets/shop_item_widget.dart';
import 'widgets/widget1_item_widget.dart';

class ShopScreen extends GetWidget<ShopController> {
  const ShopScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFollow(),
                  SizedBox(height: 21.v),
                  _buildScrollView()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildFollow() {
    return SizedBox(
        height: 276.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 20.v),
                  decoration: AppDecoration.fillBlack9001,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 15.v),
                      decoration: AppDecoration.pink.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.all(5.h),
                                decoration: AppDecoration.fillOnPrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder47),
                                child: Container(
                                    height: 85.adaptSize,
                                    width: 85.adaptSize,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder40),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage1685x85,
                                        height: 85.adaptSize,
                                        width: 85.adaptSize,
                                        radius: BorderRadius.circular(42.h),
                                        alignment: Alignment.center))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 9.h, top: 11.v, bottom: 11.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_starbucks".tr,
                                          style: theme.textTheme.headlineSmall),
                                      SizedBox(height: 10.v),
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgSignal,
                                                height: 16.v,
                                                width: 17.h,
                                                margin: EdgeInsets.only(
                                                    top: 1.v, bottom: 6.v)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text("lbl_8_1_rating".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeAmberA400))
                                          ])
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 17.h, top: 13.v, bottom: 10.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomElevatedButton(
                                          height: 35.v,
                                          width: 90.h,
                                          text: "lbl_follow".tr,
                                          buttonStyle:
                                              CustomButtonStyles.fillOnPrimary,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumIndigoA700,
                                          alignment: Alignment.centerRight),
                                      SizedBox(height: 12.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_10k_follower".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeOnPrimary_1))
                                    ]))
                          ])))),
          CustomAppBar(
              height: 112.v,
              leadingWidth: 52.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  margin: EdgeInsets.only(left: 25.h, top: 66.v, bottom: 24.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              centerTitle: true,
              title: AppbarTitleSearchview(
                  margin: EdgeInsets.only(top: 54.v, bottom: 13.v),
                  hintText: "lbl_search".tr,
                  controller: controller.searchController),
              actions: [
                Container(
                    height: 37.18.v,
                    width: 39.h,
                    margin: EdgeInsets.fromLTRB(17.h, 60.v, 17.h, 14.v),
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgNavChat,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(right: 7.h, bottom: 5.v)),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 27.h, top: 17.v, right: 4.h),
                              child: Text("lbl_3".tr,
                                  style: CustomTextStyles.labelLargeBlack900))),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 23.h, top: 19.v, bottom: 2.v),
                              decoration: BoxDecoration(
                                  color: appTheme.amberA400,
                                  borderRadius: BorderRadius.circular(8.h))))
                    ]))
              ],
              styleType: Style.bgShadow)
        ]));
  }

  /// Section Widget
  Widget _buildScrollView() {
    return Expanded(
        child: SingleChildScrollView(
            child: Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
              height: 250.v,

              width: 484.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Obx(() => CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 250.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.3,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          controller.sliderIndex.value = index;
                        }),
                    itemCount: controller
                        .shopModelObj.value.widget1ItemList.value.length,
                    itemBuilder: (context, index, realIndex) {
                      Widget1ItemModel model = controller
                          .shopModelObj.value.widget1ItemList.value[index];
                      return Widget1ItemWidget(model);
                    })),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Obx(() => Container(
                        height: 10.v,
                        margin: EdgeInsets.only(right: 151.h, bottom: 10.v),
                        child: AnimatedSmoothIndicator(
                            activeIndex: controller.sliderIndex.value,
                            count: controller.shopModelObj.value.widget1ItemList
                                .value.length,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                                spacing: 10,
                                activeDotColor: appTheme.amberA400,
                                dotColor: appTheme.amberA400.withOpacity(0.49),
                                dotHeight: 10.v,
                                dotWidth: 10.h)))))
              ]))),
      SizedBox(height: 22.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_categories".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2))),
      SizedBox(
          height: 111.v,
          child: Obx(() => ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemCount: controller
                  .shopModelObj.value.dynamictext1ItemList.value.length,
              itemBuilder: (context, index) {
                Dynamictext1ItemModel model = controller
                    .shopModelObj.value.dynamictext1ItemList.value[index];
                return Dynamictext1ItemWidget(model);
              }))),
      SizedBox(height: 12.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_hot_promotion".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2))),
      SizedBox(height: 10.v),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 24.h),
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
          decoration: AppDecoration.pink
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            CustomImageView(
                imagePath: ImageConstant.imgRectangle53,
                height: 100.v,
                width: 220.h,
                radius: BorderRadius.circular(10.h)),
            Padding(
                padding: EdgeInsets.only(left: 24.h, right: 10.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 77.v,
                          width: 106.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("lbl_70".tr,
                                        style: CustomTextStyles
                                            .headlineLargeAmber300)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("lbl_cup_tea".tr,
                                        style: theme.textTheme.headlineSmall))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(right: 7.h),
                          child: _buildPrice(
                              price1: "lbl_1_25".tr, price2: "lbl_1_00".tr))
                    ]))
          ])),
      SizedBox(height: 10.v),
      Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          color: appTheme.amberA400,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Container(
              height: 120.v,
              width: 380.h,
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
              decoration: AppDecoration.yellow
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 31.h),
                        child: Text("lbl_50".tr,
                            style: CustomTextStyles.headlineLargeIndigoA700))),
                Align(
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 36.v),
                              child: Column(children: [
                                Text("lbl_ice_milk".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 1.v),
                                _buildPrice(
                                    price1: "lbl_1_25".tr,
                                    price2: "lbl_1_50".tr)
                              ])),
                          Container(
                              height: 100.v,
                              width: 220.h,
                              margin: EdgeInsets.only(left: 29.h),
                              decoration: AppDecoration.fillPrimaryContainer
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgImage21,
                                  height: 100.v,
                                  width: 220.h,
                                  radius: BorderRadius.circular(10.h),
                                  alignment: Alignment.center))
                        ]))
              ]))),
      SizedBox(height: 10.v),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 24.h),
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
          decoration: AppDecoration.blue
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Padding(
                padding: EdgeInsets.only(top: 27.v, bottom: 30.v),
                child: Text("lbl_50".tr,
                    style: CustomTextStyles.headlineLargeAmber30001)),
            Container(
                height: 102.v,
                width: 220.h,
                margin: EdgeInsets.only(left: 4.h, top: 2.v),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 100.v,
                          width: 220.h,
                          decoration: AppDecoration.fillPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgImage22,
                              height: 100.v,
                              width: 220.h,
                              radius: BorderRadius.circular(10.h),
                              alignment: Alignment.center))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("lbl_vanila_frappe".tr,
                          style: theme.textTheme.headlineSmall))
                ])),
            Padding(
                padding: EdgeInsets.fromLTRB(19.h, 23.v, 10.h, 23.v),
                child: Column(children: [
                  Text("lbl_5_25".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary_1
                          .copyWith(decoration: TextDecoration.lineThrough)),
                  SizedBox(height: 10.v),
                  Text("lbl_3_00".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary_1)
                ]))
          ])),
      SizedBox(height: 20.v),
      Divider(
          color: appTheme.black900.withOpacity(0.25),
          indent: 24.h,
          endIndent: 24.h),
      SizedBox(height: 19.v),
      CustomElevatedButton(
          height: 80.v,
          width: 170.h,
          text: "lbl_claim_coupon".tr,
          buttonStyle: CustomButtonStyles.fillAmberA,
          buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryBold),
      SizedBox(height: 20.v),
      Divider(
          color: appTheme.black900.withOpacity(0.25),
          indent: 24.h,
          endIndent: 22.h),
      SizedBox(height: 18.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_coffee".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2))),
      SizedBox(height: 10.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.h),
          child: Obx(() => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 249.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 20.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  controller.shopModelObj.value.shopItemList.value.length,
              itemBuilder: (context, index) {
                ShopItemModel model =
                    controller.shopModelObj.value.shopItemList.value[index];
                return ShopItemWidget(model);
              }))),
      SizedBox(height: 40.v),
      CustomImageView(
          imagePath: ImageConstant.imgClosePrimary65x65,
          height: 65.adaptSize,
          width: 65.adaptSize),
      SizedBox(height: 2.v),
      Text("lbl_loading".tr, style: CustomTextStyles.titleMediumBlack900_1)
    ])));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildPrice({
    required String price1,
    required String price2,
  }) {
    return SizedBox(
        width: 97.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(price1,
              style: CustomTextStyles.bodyLargeOnPrimary_1.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: theme.colorScheme.onPrimary.withOpacity(1))),
          Text(price2,
              style: CustomTextStyles.bodyLargeOnPrimary_1
                  .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1)))
        ]));
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
  onTapArrowLeft() {
    Get.back();
  }
}
