import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/refund_success_controller.dart';

// ignore_for_file: must_be_immutable
class RefundSuccessScreen extends GetWidget<RefundSuccessController> {
  const RefundSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 42.v),
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
                child: SizedBox(
                  width: 283.h,
                  child: Text(
                    "msg_your_refund_is_successfully".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeBlack900,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBackHome(),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackHome() {
    return CustomElevatedButton(
      text: "lbl_back_home".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 23.h,
        bottom: 34.v,
      ),
    );
  }
}
