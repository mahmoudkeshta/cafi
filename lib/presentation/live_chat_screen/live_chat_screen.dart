import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'controller/live_chat_controller.dart';

class LiveChatScreen extends GetWidget<LiveChatController> {

  const LiveChatScreen( {Key? key

  
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFiftyOne(),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 97.h,
                              margin: EdgeInsets.only(left: 307.h, right: 24.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.h, vertical: 5.v),
                              decoration: AppDecoration.fillBlack9001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL20),
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
                                        imagePath: ImageConstant
                                            .imgCheckmarkPrimary6x9,
                                        height: 6.v,
                                        width: 9.h)
                                  ]))),
                      SizedBox(height: 2.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 24.h),
                              child: Text("lbl_01_20_pm".tr,
                                  style:
                                      CustomTextStyles.bodyLargeBlack900_3))),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h, right: 82.h),
                          child: CustomTextFormField(
                              controller: controller.fortyOneController,
                              hintText: "msg_wassup_let_s_me".tr,
                              hintStyle: theme.textTheme.titleLarge!,
                              maxLines: 2,
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillBlack,
                              filled: true,
                              fillColor: appTheme.black900.withOpacity(0.1))),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_01_20_pm".tr,
                              style: CustomTextStyles.bodyMediumBlack900))
                    ])),
            bottomNavigationBar: _buildMessage()));
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
            text: "lbl_live_chat".tr,
            margin: EdgeInsets.only(top: 58.v, bottom: 11.v)),
        actions: [
          Container(
              height: 25.160004.v,
              width: 22.h,
              margin: EdgeInsets.fromLTRB(24.h, 64.v, 24.h, 18.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 9.h, right: 9.h, bottom: 1.v),
                        child: Text("lbl_i".tr,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryMedium))),
                CustomIconButton(
                    height: 25.v,
                    width: 22.h,
                    alignment: Alignment.center,
                    child: CustomImageView())
              ]))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildFiftyOne() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 5.v),
        decoration: AppDecoration.fillBlack9001,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 48.adaptSize,
              width: 48.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse11,
                    height: 47.adaptSize,
                    width: 47.adaptSize,
                    radius: BorderRadius.circular(23.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        decoration: AppDecoration.outlineOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder23),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 34.v),
                              Container(
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                  decoration: BoxDecoration(
                                      color: appTheme.greenA700,
                                      borderRadius: BorderRadius.circular(7.h)))
                            ])))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 9.v, bottom: 10.v),
              child: Text("msg_mrs_kila_is_connected".tr,
                  style: CustomTextStyles.titleLargeBlack900Medium))
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
