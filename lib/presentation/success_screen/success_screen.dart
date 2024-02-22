import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/success_controller.dart';

// ignore_for_file: must_be_immutable
class SuccessScreen extends GetWidget<SuccessController> {
  const SuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 39.h,
            right: 39.h,
            bottom: 231.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 95.v),
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
                  width: 349.h,
                  child: Text(
                    "msg_you_have_successfully_create".tr,
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
        bottomNavigationBar: _buildLogin(),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin() {
    return CustomElevatedButton(
      text: "lbl_login".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 23.h,
        bottom: 34.v,
      ),
    );
  }
}
