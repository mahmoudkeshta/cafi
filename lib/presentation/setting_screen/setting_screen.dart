import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'package:coffee_app/widgets/custom_switch.dart';
import 'controller/setting_controller.dart';
import 'models/textvalue_item_model.dart';
import 'widgets/textvalue_item_widget.dart';

class SettingScreen extends GetWidget<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     final item1 = Get.arguments;
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    padding: EdgeInsets.all(11.h),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorGray900)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.h, top: 6.v, bottom: 8.v),
                                    child: Text("lbl_notification".tr,
                                        style:
                                            CustomTextStyles.titleLargeMedium))
                              ])),
                      SizedBox(height: 12.v),
                      Divider(indent: 3.h, endIndent: 3.h),
                      SizedBox(height: 9.v),
                      _buildPersonalChat(),
                      SizedBox(height: 20.v),
                      _buildOrderTracking(),
                      SizedBox(height: 20.v),
                      _buildPromotion(),
                      SizedBox(height: 40.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSearchBlack900)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 9.v, bottom: 5.v),
                                child: Text("lbl_language".tr,
                                    style: CustomTextStyles.titleLargeMedium))
                          ])),
                      SizedBox(height: 12.v),
                      Divider(indent: 3.h, endIndent: 3.h),
                      SizedBox(height: 6.v),
                      _buildTextValue()
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
            text: "lbl_setting".tr,
            margin: EdgeInsets.only(top: 61.v, bottom: 8.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildPersonalChat() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.v),
        decoration: AppDecoration.fillBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder29),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 1.v, bottom: 2.v),
              child: Text(
                'isAdmin',
                //"lbl_personal_chat".tr,
                  style: theme.textTheme.titleLarge)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 4.v),
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }


   Widget _buildisAdmin() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.v),
        decoration: AppDecoration.fillBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder29),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 1.v, bottom: 2.v),
              child: Text('isAdmin',
                //"lbl_personal_chat".tr,
                  style: theme.textTheme.titleLarge)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 4.v),
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildOrderTracking() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
        decoration: AppDecoration.fillBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder29),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 4.v),
              child: Text(//"lbl_order_tracking".tr,
              'isCafe',
                  style: theme.textTheme.titleLarge)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 4.v),
              value: controller.isSelectedSwitch1.value,
              onChange: (value) {
                controller.isSelectedSwitch1.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildPromotion() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.v),
        decoration: AppDecoration.fillBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder29),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 1.v, bottom: 2.v),
              child:
                  Text( 'isDelivery',
                    //"lbl_promotion".tr,
                   style: theme.textTheme.titleLarge)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 4.v),
              value: controller.isSelectedSwitch2.value,
              onChange: (value) {
                controller.isSelectedSwitch2.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildTextValue() {
    return SizedBox(
        height: 120.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(right: 3.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24.h);
            },
            itemCount:
                controller.settingModelObj.value.textvalueItemList.value.length,
            itemBuilder: (context, index) {
              TextvalueItemModel model = controller
                  .settingModelObj.value.textvalueItemList.value[index];
              return TextvalueItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
