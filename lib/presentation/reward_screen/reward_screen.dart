import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/reward_controller.dart';
import 'models/reward_item_model.dart';
import 'widgets/reward_item_widget.dart';

class RewardScreen extends GetWidget<RewardController> {
  const RewardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 8.v),
                  child: Column(children: [
                    SizedBox(height: 12.v),
                    _buildPoint(),
                    SizedBox(height: 20.v),
                    _buildRedeemHistory(),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                        height: 70.v,
                        text: "lbl_earn_reward".tr,
                        margin: EdgeInsets.only(left: 42.h, right: 40.h),
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGrid,
                                height: 26.v,
                                width: 23.h)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL35,
                        buttonTextStyle: CustomTextStyles.headlineSmallPrimary),
                    SizedBox(height: 30.v),
                    _buildReward()
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
            text: "lbl_my_reward".tr,
            margin: EdgeInsets.only(top: 62.v, bottom: 7.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildPoint() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.indigoA700,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 200.v,
            width: 380.h,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.blue
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      margin: EdgeInsets.only(left: 260.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder50),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 43.v),
                            Text("lbl_point".tr,
                                style: CustomTextStyles.headlineSmallMedium)
                          ]))),
              Opacity(
                  opacity: 0.1,
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          margin: EdgeInsets.only(right: 46.h, bottom: 27.v),
                          decoration: BoxDecoration(
                              color:
                                  theme.colorScheme.onPrimary.withOpacity(0.39),
                              borderRadius: BorderRadius.circular(50.h))))),
              Opacity(
                  opacity: 0.1,
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          margin: EdgeInsets.only(right: 88.h),
                          decoration: BoxDecoration(
                              color:
                                  theme.colorScheme.onPrimary.withOpacity(0.39),
                              borderRadius: BorderRadius.circular(50.h))))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 47.v, right: 15.h),
                      child: Text("lbl_200".tr,
                          style: CustomTextStyles.headlineSmallMedium))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      margin: EdgeInsets.only(left: 10.h, top: 10.v),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder40),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgImage33,
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          radius: BorderRadius.circular(40.h),
                          alignment: Alignment.center))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 30.v),
                      child: Container(
                          height: 10.v,
                          width: 341.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(5.h)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.h),
                              child: LinearProgressIndicator(
                                  value: 0.31,
                                  backgroundColor: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary)))))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 9.h, bottom: 5.v),
                      child: Text("lbl_200".tr,
                          style: CustomTextStyles.titleMediumOnPrimary_1))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 10.h, bottom: 5.v),
                      child: Text("lbl_max_level".tr,
                          style: CustomTextStyles.titleMediumOnPrimary_1)))
            ])));
  }

  /// Section Widget
  Widget _buildRedeemHistory() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
            child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.amberA400,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Container(
                    height: 180.adaptSize,
                    width: 180.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.v),
                    decoration: AppDecoration.yellow.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20),
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              width: 106.h,
                              margin: EdgeInsets.only(top: 6.v),
                              child: Text("lbl_redeem_history".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      CustomTextStyles.headlineSmallBlack900_2))),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage37,
                          height: 69.adaptSize,
                          width: 69.adaptSize,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 1.h))
                    ]))),
                    onTap: (() {
                      Get.toNamed(AppRoutes.rewardHistoryScreen);
                    }),
          ),
          InkWell(
            child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.amberA400,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Container(
                    height: 180.adaptSize,
                    width: 180.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v),
                    decoration: AppDecoration.yellow.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20),
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              width: 145.h,
                              margin: EdgeInsets.only(top: 21.v),
                              child: Text("msg_how_to_earn_point".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      CustomTextStyles.headlineSmallBlack900_2))),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage38,
                          height: 83.adaptSize,
                          width: 83.adaptSize,
                          alignment: Alignment.bottomRight)
                    ]))),
                           onTap: (() {
                      Get.toNamed(AppRoutes.earnPointScreen);
                    }),
          )
        ]));
  }

  /// Section Widget
  Widget _buildReward() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0.v),
                  child: SizedBox(
                      width: 380.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.black900.withOpacity(0.1))));
            },
            itemCount:
                controller.rewardModelObj.value.rewardItemList.value.length,
            itemBuilder: (context, index) {
              RewardItemModel model =
                  controller.rewardModelObj.value.rewardItemList.value[index];
              return RewardItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
