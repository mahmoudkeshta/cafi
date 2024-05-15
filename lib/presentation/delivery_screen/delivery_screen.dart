import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_outlined_button.dart';
import 'controller/delivery_controller.dart';

class DeliveryScreen extends GetWidget<DeliveryController> {
  const DeliveryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 59.h),
                child: InkWell(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 14.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage53,
                            height: 170.adaptSize,
                            width: 170.adaptSize),
                        SizedBox(height: 33.v),
                        Text("lbl_delivery_pickup".tr,
                            style: CustomTextStyles.displaySmallPrimary),
                        SizedBox(height: 26.v),
                        CustomElevatedButton(
                            height: 100.v,
                            text: "lbl_wait".tr,
                            margin: EdgeInsets.symmetric(horizontal: 5.h),
                            buttonStyle: CustomButtonStyles.fillAmberATL50,
                            buttonTextStyle: theme.textTheme.displaySmall!),
                        SizedBox(height: 21.v),
                        Text("msg_please_wait_this".tr,
                            style: theme.textTheme.bodyLarge)
                      ]),
                      onTap: () {
                          Get.toNamed(AppRoutes.trackingOrdersScreen);
                      },
                )),
            bottomNavigationBar: _buildGetHelp()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v),
            onTap: () {
             Get.toNamed(AppRoutes.homeScreen);
              // onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "lbl_delivery".tr,
            margin: EdgeInsets.only(top: 61.v, bottom: 8.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildGetHelp() {
    return CustomOutlinedButton(
        height: 90.v,
        width: 250.h,
        text: "lbl_get_help2".tr,
        margin: EdgeInsets.only(left: 89.h, right: 89.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL45,
        buttonTextStyle: CustomTextStyles.headlineSmallPrimary_1);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
