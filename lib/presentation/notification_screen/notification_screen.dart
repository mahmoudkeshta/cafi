import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'controller/notification_controller.dart';
import 'models/description_item_model.dart';
import 'models/userprofile7_item_model.dart';
import 'models/userprofile8_item_model.dart';
import 'widgets/description_item_widget.dart';
import 'widgets/userprofile7_item_widget.dart';
import 'widgets/userprofile8_item_widget.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_now".tr,
                              style: CustomTextStyles.headlineSmallBlack900_2)),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildUserProfile(),
                                SizedBox(height: 23.v),
                                Text("lbl_yesterday".tr,
                                    style: CustomTextStyles
                                        .headlineSmallBlack900_2),
                                SizedBox(height: 6.v),
                                _buildUserProfile1(),
                                SizedBox(height: 19.v),
                                Text("msg_last_10_jun_2022".tr,
                                    style: CustomTextStyles
                                        .headlineSmallBlack900_2)
                              ])),
                      SizedBox(height: 20.v),
                      _buildDescription()
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
            text: "lbl_notification".tr,
            margin: EdgeInsets.only(top: 58.v, bottom: 11.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgThumbsUpOnprimary,
              margin: EdgeInsets.fromLTRB(25.h, 64.v, 25.h, 16.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: controller
                .notificationModelObj.value.userprofile7ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile7ItemModel model = controller
                  .notificationModelObj.value.userprofile7ItemList.value[index];
              return Userprofile7ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildUserProfile1() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: controller
                .notificationModelObj.value.userprofile8ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile8ItemModel model = controller
                  .notificationModelObj.value.userprofile8ItemList.value[index];
              return Userprofile8ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildDescription() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: controller
                .notificationModelObj.value.descriptionItemList.value.length,
            itemBuilder: (context, index) {
              DescriptionItemModel model = controller
                  .notificationModelObj.value.descriptionItemList.value[index];
              return DescriptionItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
