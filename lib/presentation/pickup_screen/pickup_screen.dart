import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_outlined_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'controller/pickup_controller.dart';
import 'models/pickup_item_model.dart';
import 'widgets/pickup_item_widget.dart';

class PickupScreen extends GetWidget<PickupController> {
  const PickupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                height: 1137.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 23.h),
                              padding: EdgeInsets.symmetric(vertical: 19.v),
                              decoration: AppDecoration.fillBlack9002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.h),
                                            child: Text("msg_order_id_12b32".tr,
                                                style: CustomTextStyles
                                                    .titleLargeMedium))),
                                    _buildJan(),
                                    Divider(
                                        color:
                                            appTheme.black900.withOpacity(0.25),
                                        indent: 20.h,
                                        endIndent: 19.h),
                                    SizedBox(height: 19.v),
                                    _buildPickup(),
                                    SizedBox(height: 23.v),
                                    Divider(
                                        color:
                                            appTheme.black900.withOpacity(0.25),
                                        indent: 20.h,
                                        endIndent: 19.h),
                                    SizedBox(height: 18.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.h),
                                            child: Text("lbl_address".tr,
                                                style: CustomTextStyles
                                                    .headlineSmallBlack900Medium))),
                                    SizedBox(height: 1.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: 237.h,
                                            margin: EdgeInsets.only(left: 20.h),
                                            child: Text(
                                                "msg_st_71_terk_thlar".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.titleLarge))),
                                    SizedBox(height: 12.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.h),
                                            child: Text("lbl_payment".tr,
                                                style: CustomTextStyles
                                                    .headlineSmallBlack900Medium))),
                                    SizedBox(height: 6.v),
                                    _buildABABANK(),
                                    SizedBox(height: 20.v),
                                    Divider(
                                        color:
                                            appTheme.black900.withOpacity(0.25),
                                        indent: 20.h,
                                        endIndent: 19.h),
                                    SizedBox(height: 22.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.h),
                                            child: Text("lbl_order_summary".tr,
                                                style: CustomTextStyles
                                                    .headlineSmallBlack900_2))),
                                    SizedBox(height: 6.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.h, right: 28.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_sub_total".tr,
                                                  style: theme
                                                      .textTheme.titleLarge),
                                              Text("lbl_12_50".tr,
                                                  style: theme
                                                      .textTheme.titleLarge)
                                            ])),
                                    SizedBox(height: 5.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 19.h),
                                        child: _buildTotal(
                                            total: "lbl_vat".tr,
                                            price: "lbl_0_50".tr)),
                                    SizedBox(height: 4.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_discount".tr,
                                                  style: theme
                                                      .textTheme.titleLarge),
                                              Text("lbl_13_00".tr,
                                                  style: theme
                                                      .textTheme.titleLarge)
                                            ])),
                                    SizedBox(height: 10.v),
                                    Divider(
                                        color: appTheme.black900
                                            .withOpacity(0.25)),
                                    SizedBox(height: 18.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 19.h),
                                        child: _buildTotal(
                                            total: "lbl_total".tr,
                                            price: "lbl_13_00".tr)),
                                    SizedBox(height: 15.v)
                                  ])))),
                  _buildFortyNine()
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
            text: "lbl_pick_up2".tr,
            margin: EdgeInsets.only(top: 61.v, bottom: 8.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildJan() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 19.h),
        child: CustomTextFormField(
            controller: controller.janController,
            hintText: "lbl_01_jan_2022".tr,
            hintStyle: CustomTextStyles.bodyLargeAmberA400,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildPickup() {
    return Expanded(
        child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 20.h, right: 96.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10.v);
                    },
                    itemCount: controller
                        .pickupModelObj.value.pickupItemList.value.length,
                    itemBuilder: (context, index) {
                      PickupItemModel model = controller
                          .pickupModelObj.value.pickupItemList.value[index];
                      return PickupItemWidget(model);
                    })))));
  }

  /// Section Widget
  Widget _buildABABANK() {
    return CustomElevatedButton(
        text: "lbl_aba_bank".tr,
        margin: EdgeInsets.only(left: 51.h, right: 50.h),
        buttonStyle: CustomButtonStyles.fillAmberATL30,
        buttonTextStyle: CustomTextStyles.headlineSmallBlack900Bold,
    
        );
        
  }

  /// Section Widget
  Widget _buildRefund() {
    return CustomOutlinedButton(text: "lbl_refund".tr);
  }

  /// Section Widget
  Widget _buildConfirm() {
    return CustomElevatedButton(text: "lbl_confirm".tr);
  }

  /// Section Widget
  Widget _buildFortyNine() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 298.v),
            padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 20.v),
            decoration: AppDecoration.outlineBlack9001
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL202),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _buildRefund(),
              SizedBox(height: 10.v),
              _buildConfirm(),
              SizedBox(height: 15.v)
            ])));
  }

  /// Common widget
  Widget _buildTotal({
    required String total,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(total,
          style: theme.textTheme.headlineLarge!
              .copyWith(color: appTheme.black900)),
      Text(price,
          style:
              theme.textTheme.headlineLarge!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
