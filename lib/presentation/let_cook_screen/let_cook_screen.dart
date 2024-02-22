import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/let_cook_controller.dart';

// ignore_for_file: must_be_immutable
class LetCookScreen extends GetWidget<LetCookController> {
  const LetCookScreen({Key? key})
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
                  width: 166.h,
                  child: Text(
                    "msg_your_order_is_paid".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Opacity(
                opacity: 0.75,
                child: Text(
                  "msg_you_can_track_order".tr,
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
              ),
              SizedBox(height: 49.v),
              CustomElevatedButton(
                text: "lbl_let_s_cook".tr,
                margin: EdgeInsets.symmetric(horizontal: 64.h),
                buttonStyle: CustomButtonStyles.outlineBlack,
              ),
              SizedBox(height: 19.v),
              Text(
                "lbl_go_to_home".tr,
                style: CustomTextStyles.headlineSmallBlack900Medium_1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
