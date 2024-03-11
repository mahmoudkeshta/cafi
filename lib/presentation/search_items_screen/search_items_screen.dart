import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cafe_following_page/cafe_following_page.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_bottom_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/search_items_controller.dart';

class SearchItemsScreen extends GetWidget<SearchItemsController> {
  const SearchItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTopbar(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 20.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              SizedBox(
                                  height: 40.v,
                                  width: 160.h,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_search_items".tr,
                                                style: CustomTextStyles
                                                    .titleLargeOnPrimarySemiBold)),
                                        _buildSearchItemsButton()
                                      ])),
                              Container(
                                  height: 30.v,
                                  width: 52.h,
                                  margin: EdgeInsets.only(
                                      left: 20.h, top: 7.v, bottom: 2.v),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_shop".tr,
                                                style: CustomTextStyles
                                                    .titleLargeBlack900SemiBold)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_shop".tr,
                                                style: CustomTextStyles
                                                    .titleLargeBlack900SemiBold))
                                      ]))
                            ]),
                            SizedBox(height: 30.v),
                            _buildStarbuck(),
                            SizedBox(height: 10.v),
                            _buildLuna(),
                            SizedBox(height: 10.v),
                            _buildBrown(),
                            SizedBox(height: 5.v)
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildTopbar() {
    return SizedBox(
        height: 112.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v),
                  decoration: AppDecoration.outlineBlack900,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftOnprimary,
                            height: 22.v,
                            width: 27.h,
                            margin: EdgeInsets.only(top: 53.v, bottom: 10.v),
                            onTap: () {
                              onTapImgArrowLeft();
                            }),
                        Spacer(flex: 43),
                        Container(
                            margin: EdgeInsets.only(top: 41.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 5.v),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder23),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 3.v),
                                  Text("lbl_ice_tea".tr,
                                      style: CustomTextStyles
                                          .titleLargeOnPrimarySemiBold)
                                ])),
                        Spacer(flex: 56),
                        Opacity(
                            opacity: 0.75,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgSend,
                                height: 23.adaptSize,
                                width: 23.adaptSize,
                                margin:
                                    EdgeInsets.only(top: 54.v, bottom: 9.v)))
                      ]))),
          CustomAppBar(
              height: 71.v,
              leadingWidth: 52.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  margin: EdgeInsets.only(left: 25.h, top: 26.v, bottom: 4.v)),
              title: AppbarSubtitleFour(
                  text: "lbl_ice_tea".tr,
                  margin: EdgeInsets.only(left: 54.h, top: 23.v)),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgSend,
                    margin:
                        EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildSearchItemsButton() {
    return CustomElevatedButton(
        height: 40.v,
        width: 160.h,
        text: "lbl_search_items".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL20,
        buttonTextStyle: CustomTextStyles.titleLargeOnPrimarySemiBold,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildStarbuckButton() {
    return CustomElevatedButton(
        height: 30.v,
        width: 109.h,
        text: "lbl_starbuck".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary_1);
  }

  /// Section Widget
  Widget _buildStarbuck() {
    return Container(
        decoration: AppDecoration.fillBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          Container(
              height: 160.v,
              width: 190.h,
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL201),
              child: CustomImageView(
                  imagePath: ImageConstant.imgImage36,
                  height: 160.v,
                  width: 190.h,
                  radius: BorderRadius.horizontal(left: Radius.circular(20.h)),
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 36.h, top: 19.v),
              child: Column(children: [
                Text("lbl_ice_tea_rii".tr,
                    style: CustomTextStyles.titleLargeSemiBold),
                SizedBox(height: 5.v),
                Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildLunaPriceRow(
                        price1: "lbl_1_50".tr, price2: "lbl_1_00".tr)),
                SizedBox(height: 7.v),
                _buildLunaSignalRow(ratingText: "lbl_8_1_rating".tr),
                SizedBox(height: 13.v),
                _buildStarbuckButton()
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildLunaButton() {
    return CustomElevatedButton(
        height: 30.v,
        width: 109.h,
        text: "lbl_luna".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary_1);
  }

  /// Section Widget
  Widget _buildLuna() {
    return Container(
        decoration: AppDecoration.fillBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          Container(
              height: 160.v,
              width: 190.h,
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL201),
              child: CustomImageView(
                  imagePath: ImageConstant.imgImage35,
                  height: 160.v,
                  width: 190.h,
                  radius: BorderRadius.horizontal(left: Radius.circular(20.h)),
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 37.h, top: 19.v),
              child: Column(children: [
                Text("lbl_ice_soda".tr,
                    style: CustomTextStyles.titleLargeSemiBold),
                SizedBox(height: 5.v),
                Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: _buildLunaPriceRow(
                        price1: "lbl_1_50".tr, price2: "lbl_1_00".tr)),
                SizedBox(height: 7.v),
                _buildLunaSignalRow(ratingText: "lbl_8_1_rating".tr),
                SizedBox(height: 13.v),
                _buildLunaButton()
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildBrownButton() {
    return CustomElevatedButton(
        height: 30.v,
        width: 109.h,
        text: "lbl_brown".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary_1);
  }

  /// Section Widget
  Widget _buildBrown() {
    return Container(
        decoration: AppDecoration.fillBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          Container(
              height: 160.v,
              width: 190.h,
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL201),
              child: CustomImageView(
                  imagePath: ImageConstant.imgImage34,
                  height: 160.v,
                  width: 190.h,
                  radius: BorderRadius.horizontal(left: Radius.circular(20.h)),
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 37.h, top: 13.v),
              child: Column(children: [
                Text("lbl_ice_green".tr,
                    style: CustomTextStyles.titleLargeSemiBold),
                SizedBox(height: 4.v),
                Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: _buildLunaPriceRow(
                        price1: "lbl_1_50".tr, price2: "lbl_1_00".tr)),
                SizedBox(height: 7.v),
                _buildLunaSignalRow(ratingText: "lbl_8_1_rating".tr),
                SizedBox(height: 20.v),
                _buildBrownButton()
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildLunaPriceRow({
    required String price1,
    required String price2,
  }) {
    return SizedBox(
        width: 106.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(price1,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.black900)),
          Text(price2,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.black900))
        ]));
  }

  /// Common widget
  Widget _buildLunaSignalRow({required String ratingText}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgSignal,
              height: 14.v,
              width: 15.h,
              margin: EdgeInsets.only(top: 1.v, bottom: 8.v)),
          Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(ratingText,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.black900)))
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
