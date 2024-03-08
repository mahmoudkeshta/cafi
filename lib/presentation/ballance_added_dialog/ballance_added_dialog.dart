import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/ballance_added_controller.dart';

// ignore: must_be_immutable
class BallanceAddedDialog extends StatelessWidget {
  BallanceAddedDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  BallanceAddedController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 381.h,
      padding: EdgeInsets.all(40.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
            child: Container(
              width: 211.h,
              margin: EdgeInsets.only(
                left: 41.h,
                right: 48.h,

                
              ),
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
            text: "lbl_100_00".tr,
            buttonStyle: CustomButtonStyles.fillAmberATL35,
            buttonTextStyle: CustomTextStyles.headlineSmallBlack900_1,
          ),
          SizedBox(height: 31.v),
          CustomElevatedButton(
            text: "lbl_check_balance".tr,
            buttonStyle: CustomButtonStyles.outlineBlack,
          ),
        ],
      ),
    );
  }
}
