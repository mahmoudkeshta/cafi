import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/cart_controller.dart';
import 'models/userprofile4_item_model.dart';
import 'widgets/userprofile4_item_widget.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 9.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildUserProfile(),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_order_summary".tr,
                              style: CustomTextStyles.headlineSmallBlack900_2)),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.h),
                          child: _buildVat(
                              vatText: "lbl_sub_total".tr,
                              priceText: "lbl_7_20".tr)),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.h),
                          child: _buildVat(
                              vatText: "lbl_vat".tr, priceText: "lbl_0_50".tr)),
                      SizedBox(height: 19.v),
                      _buildThirtyTwo(),
                      SizedBox(height: 29.v),
                      _buildTotal(),
                      SizedBox(height: 1.v)
                    ])),
            bottomNavigationBar: _buildPlaceOrder()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 25.h, top: 66.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "lbl_my_cart".tr,
            margin: EdgeInsets.only(top: 62.v, bottom: 7.v)),
        actions: [
          AppbarSubtitleThree(
              text: "lbl_edit".tr,
              margin: EdgeInsets.fromLTRB(24.h, 64.v, 24.h, 13.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0.v),
              child: SizedBox(
                  width: 381.h,
                  child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.black900.withOpacity(0.25))));
        },
        itemCount:
            controller.cartModelObj.value.userprofile4ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile4ItemModel model =
              controller.cartModelObj.value.userprofile4ItemList.value[index];
          return Userprofile4ItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildThirtyTwo() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 22.h, top: 7.v, bottom: 2.v),
              child: Text("lbl_coupon_here".tr,
                  style: CustomTextStyles.titleLargeBlack900)),
          CustomElevatedButton(
              height: 40.v,
              width: 108.h,
              text: "lbl_apply".tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL20,
              buttonTextStyle: CustomTextStyles.titleMediumOnPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildTotal() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_total".tr, style: theme.textTheme.headlineLarge),
          Text("lbl_7_70".tr, style: theme.textTheme.headlineLarge)
        ]));
  }

  /// Section Widget
  Widget _buildPlaceOrder() {
    return CustomElevatedButton(
        text: "lbl_place_order".tr,
        margin: EdgeInsets.only(left: 24.h, right: 23.h, bottom: 34.v));
  }

  /// Common widget
  Widget _buildVat({
    required String vatText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(vatText,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.black900)),
      Text(priceText,
          style: theme.textTheme.titleLarge!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
