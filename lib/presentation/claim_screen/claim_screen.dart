import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/claim_controller.dart';

// ignore_for_file: must_be_immutable
class ClaimScreen extends GetWidget<ClaimController> {
  const ClaimScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 40.v),
          child: Column(
            children: [
              Spacer(
                flex: 54,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage44,
                height: 80.adaptSize,
                width: 80.adaptSize,
              ),
              SizedBox(height: 12.v),
              Text(
                "msg_congratulations".tr,
                style: CustomTextStyles.headlineLargeMedium,
              ),
              SizedBox(height: 21.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage43223x260,
                height: 223.v,
                width: 260.h,
                radius: BorderRadius.circular(
                  130.h,
                ),
              ),
              SizedBox(height: 31.v),
              Opacity(
                opacity: 0.75,
                child: Text(
                  "msg_refer_first_friend".tr,
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
              ),
              Spacer(
                flex: 45,
              ),
              CustomElevatedButton(
                height: 70.v,
                width: 280.h,
                text: "msg_50_point_reward".tr,
                buttonStyle: CustomButtonStyles.fillAmberATL35,
                buttonTextStyle: CustomTextStyles.headlineSmallBlack900,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildClaim(),
      ),
    );
  }

  /// Section Widget
  Widget _buildClaim() {
    return CustomElevatedButton(
      text: "lbl_claim".tr,
      margin: EdgeInsets.only(
        left: 25.h,
        right: 24.h,
        bottom: 34.v,
      ),
    );
  }
}
