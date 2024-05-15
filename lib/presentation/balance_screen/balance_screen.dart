import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import '../balance_screen/widgets/yesterday_item_widget.dart';
import 'controller/balance_controller.dart';
import 'models/yesterday_item_model.dart';

class BalanceScreen extends GetWidget<BalanceController> {
  const BalanceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
                  child: Column(children: [
                    SizedBox(height: 8.v),
                    _buildTopUp(),
                    SizedBox(height: 9.v),
                    _buildBrown(),
                    SizedBox(height: 22.v),
                    _buildYesterday()
                  ])),
            )));
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
            text: "lbl_balance".tr,
            margin: EdgeInsets.only(top: 58.v, bottom: 11.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTopUp() {
    return SizedBox(
        height: 258.v,
        width: 385.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.indigoA700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Container(
                      height: 200.v,
                      width: 380.h,
                      padding: EdgeInsets.all(10.h),
                      decoration: AppDecoration.blue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Opacity(
                            opacity: 0.1,
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 100.adaptSize,
                                    width: 100.adaptSize,
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(0.39),
                                        borderRadius:
                                            BorderRadius.circular(50.h))))),
                        Opacity(
                            opacity: 0.1,
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 100.adaptSize,
                                    width: 100.adaptSize,
                                    margin: EdgeInsets.only(
                                        right: 46.h, bottom: 27.v),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(0.39),
                                        borderRadius:
                                            BorderRadius.circular(50.h))))),
                        Opacity(
                            opacity: 0.1,
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 100.adaptSize,
                                    width: 100.adaptSize,
                                    margin: EdgeInsets.only(right: 88.h),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(0.39),
                                        borderRadius:
                                            BorderRadius.circular(50.h))))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h, top: 13.v),
                                child: Text("lbl_app_balance".tr,
                                    style: theme.textTheme.headlineSmall))),
                        CustomElevatedButton(
                            height: 40.v,
                            width: 96.h,
                            text: "lbl_top_up".tr,
                            margin: EdgeInsets.only(right: 9.h, bottom: 7.v),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL12,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary,
                            alignment: Alignment.bottomRight)
                      ])))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin: EdgeInsets.only(right: 225.h, bottom: 19.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 36.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder81),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("lbl_103_55".tr,
                                style: CustomTextStyles.headlineSmallMedium)),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text("lbl_yev_yev".tr,
                                style: CustomTextStyles.titleLargeOnPrimary_1))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_now".tr,
                      style: CustomTextStyles.headlineSmallBlack900Medium)))
        ]));
  }

  /// Section Widget
  Widget _buildBrown() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 2.v),
        decoration: AppDecoration.fillBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 17.v, bottom: 20.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder23),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse204,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                radius: BorderRadius.circular(25.h),
                                alignment: Alignment.center)),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h, top: 3.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_brown".tr,
                                      style: theme.textTheme.bodyLarge),
                                  Text("lbl_2x_ice_mocha".tr,
                                      style: theme.textTheme.bodyLarge)
                                ]))
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 25.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_6_25".tr,
                            style: CustomTextStyles.headlineSmallRedA700),
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("lbl_10_20am".tr,
                                style: theme.textTheme.bodyMedium))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildYesterday() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        child: Obx(() => GroupedListView<YesterdayItemModel, String>(
            shrinkWrap: true,
            stickyHeaderBackgroundColor: Colors.transparent,
            elements: controller.balanceModelObj.value.yesterdayItemList.value,
            groupBy: (element) => element.groupBy!.value,
            sort: false,
            groupSeparatorBuilder: (String value) {
              return Padding(
                  padding: EdgeInsets.only(top: 23.v, bottom: 6.v),
                  child: Column(children: [
                    Text(value,
                        style: CustomTextStyles.headlineSmallBlack900Medium
                            .copyWith(color: appTheme.black900))
                  ]));
            },
            itemBuilder: (context, model) {
              return YesterdayItemWidget(model);
            },
            separator: SizedBox(height: 10.v))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
