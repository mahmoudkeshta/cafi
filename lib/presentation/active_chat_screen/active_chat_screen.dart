import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'controller/active_chat_controller.dart';

class ActiveChatScreen extends GetWidget<ActiveChatController> {
   final String? roomId;

  const ActiveChatScreen(  
    {
      this.roomId, 
    Key? key,
   //this.roomId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      _buildLineSeventeen(),
                      SizedBox(height: 27.v),
                      Container(
                          width: 97.h,
                          margin: EdgeInsets.only(left: 284.h, right: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 5.v),
                          decoration: AppDecoration.fillBlack9001.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 6.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 11.h),
                                    child: Text("lbl_hi_sir".tr,
                                        style: theme.textTheme.titleLarge)),
                                SizedBox(height: 1.v),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCheckmarkPrimary6x9,
                                    height: 6.v,
                                    width: 9.h)
                              ])),
                      SizedBox(height: 1.v),
                      Text("lbl_01_20_pm".tr,
                          style: CustomTextStyles.bodyMediumBlack900),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 59.h),
                          child: CustomTextFormField(
                              controller: controller.group181Controller,
                              hintText: "msg_hello_do_you_need".tr,
                              hintStyle: theme.textTheme.titleLarge!,
                              alignment: Alignment.centerLeft,
                              maxLines: 2,
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillBlack,
                              filled: true,
                              fillColor: appTheme.black900.withOpacity(0.1))),
                      SizedBox(height: 1.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("lbl_01_40_pm".tr,
                                  style: CustomTextStyles.bodyMediumBlack900))),
                      SizedBox(height: 5.v),
                      Container(
                          margin: EdgeInsets.only(right: 4.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 16.v),
                          decoration: AppDecoration.fillBlack9001.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: CustomIconButton(
                                        height: 34.adaptSize,
                                        width: 34.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        decoration:
                                            IconButtonStyleHelper.fillBlackTL17,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgOverflowMenu))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgXmlid34,
                                    height: 35.v,
                                    width: 155.h,
                                    margin: EdgeInsets.only(left: 10.h)),
                                Container(
                                    height: 6.adaptSize,
                                    width: 6.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 10.h, top: 15.v, bottom: 14.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.black900,
                                        borderRadius:
                                            BorderRadius.circular(3.h))),
                                Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(4.h, 8.v, 1.h, 6.v),
                                    child: Text("lbl_0_20".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBlack900_1))
                              ])),
                      SizedBox(height: 1.v),
                      Padding(
                          padding: EdgeInsets.only(right: 4.h),
                          child: Text("lbl_02_20_pm".tr,
                              style: CustomTextStyles.bodyMediumBlack900))
                    ])),
            bottomNavigationBar: _buildMessage()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 122.v,
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 33.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 41.h, top: 47.v, bottom: 17.v),
            child: Column(children: [
              Row(children: [
                Container(
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder29),
                    child: AppbarCircleimage(
                        imagePath: ImageConstant.imgImage1658x58)),
                Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(children: [
                      AppbarSubtitleOne(text: 
                      
                      "lbl_brown".tr
                    
                     
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 13.h),
                          child: Row(children: [
                            Container(
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 5.v),
                                decoration: BoxDecoration(
                                    color: appTheme.amberA400,
                                    borderRadius: BorderRadius.circular(5.h))),
                            AppbarSubtitleSix(
                                text: "lbl_online".tr,
                                margin: EdgeInsets.only(left: 4.h))
                          ]))
                    ]))
              ])
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCall40x40,
              margin: EdgeInsets.fromLTRB(30.h, 58.v, 30.h, 24.v))
        ],
        styleType: Style.bgShadow_1);
  }

  /// Section Widget
  Widget _buildLineSeventeen() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 11.v),
              child: SizedBox(width: 160.h, child: Divider())),
          Text("lbl_today".tr, style: CustomTextStyles.bodyLargeBlack900_3),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 11.v),
              child: SizedBox(width: 162.h, child: Divider()))
        ]));
  }

  /// Section Widget
  Widget _buildMessage() {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 34.v),
        child: CustomTextFormField(
            controller: controller.messageController,
            hintText: "lbl_write_a_message".tr,
            hintStyle: CustomTextStyles.titleLargeBlack900,
            textInputAction: TextInputAction.done,
            suffix: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgAttach,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 80.v),
            contentPadding:
                EdgeInsets.only(left: 20.h, top: 25.v, bottom: 25.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
