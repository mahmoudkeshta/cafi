import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_outlined_button.dart';
import 'controller/order_success_controller.dart';

// ignore_for_file: must_be_immutable
class OrderSuccessScreen extends GetWidget<OrderSuccessController> {
  const OrderSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              Spacer(
                flex: 45,
              ),
              Container(
                height: 148.adaptSize,
                width: 148.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 32.h,
                  vertical: 39.v,
                ),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder74,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary,
                  height: 52.v,
                  width: 70.h,
                  alignment: Alignment.bottomRight,
                ),
              ),
              SizedBox(height: 30.v),
              Opacity(
                opacity: 0.75,
                child: Container(
                  width: 283.h,
                  margin: EdgeInsets.only(
                    left: 51.h,
                    right: 50.h,
                  ),
                  child: Text(
                    "msg_your_order_is_successfully".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeBlack900,
                  ),
                ),
              ),
              Spacer(
                flex: 54,
              ),
              CustomOutlinedButton(
                text: "lbl_skip".tr,
              ),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                text: "lbl_go_review".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_your_order".tr,
        margin: EdgeInsets.only(
          top: 58.v,
          bottom: 11.v,
        ),
      ),
      styleType: Style.bgShadow,
    );
  }
}
