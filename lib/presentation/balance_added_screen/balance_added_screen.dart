import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/balance_added_controller.dart';

// ignore_for_file: must_be_immutable
class BalanceAddedScreen extends GetWidget<BalanceAddedController> {
  const BalanceAddedScreen({Key? key})
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
              SizedBox(height: 31.v),
              Opacity(
                opacity: 0.75,
                child: SizedBox(
                  width: 211.h,
                  child: Text(
                    "msg_your_balance_added".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              CustomElevatedButton(
                height: 70.v,
                width: 180.h,
                text: "lbl_72_002".tr,
                buttonStyle: CustomButtonStyles.fillAmberATL35,
                buttonTextStyle: CustomTextStyles.headlineSmallBlack900_1,
              ),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                text: "lbl_check_balance".tr,
                margin: EdgeInsets.symmetric(horizontal: 64.h),
                buttonStyle: CustomButtonStyles.outlineBlack,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
