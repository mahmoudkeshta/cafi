import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cafe_following_page/cafe_following_page.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_bottom_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'controller/order_details_controller.dart';
import 'models/userprofile6_item_model.dart';
import 'widgets/userprofile6_item_widget.dart';

class OrderDetailsScreen extends GetWidget<OrderDetailsController> {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 23.h),
                              padding: EdgeInsets.symmetric(vertical: 14.v),
                              decoration: AppDecoration.fillBlack9002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 19.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 5.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "msg_order_id_12b32"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleLargeMedium)),
                                                        CustomTextFormField(
                                                            controller: controller
                                                                .janController,
                                                            hintText:
                                                                "lbl_01_jan_2022"
                                                                    .tr,
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargeAmberA400,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            alignment: Alignment
                                                                .centerRight)
                                                      ])),
                                              CustomElevatedButton(
                                                  height: 50.v,
                                                  width: 119.h,
                                                  text: "lbl_invioce".tr,
                                                  margin: EdgeInsets.only(
                                                      bottom: 10.v),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineBlackTL25,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleLargeOnPrimaryMedium)
                                            ])),
                                    SizedBox(height: 10.v),
                                    Divider(
                                        color:
                                            appTheme.black900.withOpacity(0.25),
                                        indent: 20.h,
                                        endIndent: 19.h),
                                    SizedBox(height: 19.v),
                                    _buildUserProfile(),
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
                                    CustomElevatedButton(
                                        text: "lbl_aba_bank".tr,
                                        margin: EdgeInsets.only(
                                            left: 51.h, right: 50.h),
                                        buttonStyle:
                                            CustomButtonStyles.fillAmberATL30,
                                        buttonTextStyle: CustomTextStyles
                                            .headlineSmallBlack900Bold),
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
                                            totalText: "lbl_vat".tr,
                                            priceText: "lbl_0_50".tr)),
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
                                            totalText: "lbl_total".tr,
                                            priceText: "lbl_13_00".tr)),
                                    SizedBox(height: 5.v)
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
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
            text: "lbl_order_details".tr,
            margin: EdgeInsets.only(top: 58.v, bottom: 11.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserProfile() {
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
                    itemCount: controller.orderDetailsModelObj.value
                        .userprofile6ItemList.value.length,
                    itemBuilder: (context, index) {
                      Userprofile6ItemModel model = controller
                          .orderDetailsModelObj
                          .value
                          .userprofile6ItemList
                          .value[index];
                      return Userprofile6ItemWidget(model);
                    })))));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildTotal({
    required String totalText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(totalText,
          style: theme.textTheme.headlineLarge!
              .copyWith(color: appTheme.black900)),
      Text(priceText,
          style:
              theme.textTheme.headlineLarge!.copyWith(color: appTheme.black900))
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
  onTapArrowLeft() {
    Get.back();
  }
}
