import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_outlined_button.dart';
import 'controller/link_popup_three_controller.dart';

class LinkPopupThreeDialog extends StatelessWidget {
  LinkPopupThreeDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LinkPopupThreeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 107.v,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          _buildTwentyTwoThousandThirty(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyTwoThousandThirty() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_card_number".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 29.v,
                  width: 46.h,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            margin: EdgeInsets.only(right: 1.h),
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineBlack9004.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder29,
            ),
            child: Text(
              "msg_1234_2345_6789_0987".tr,
              style: CustomTextStyles.headlineSmallBlack900Regular,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 41.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_date_of_expiry".tr,
                    style: CustomTextStyles.headlineSmallBlack900_2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "lbl_cvv".tr,
                    style: CustomTextStyles.headlineSmallBlack900_2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlinedButton(
                  width: 189.h,
                  text: "lbl_02_2030".tr,
                  buttonStyle: CustomButtonStyles.outlineBlackTL30,
                  buttonTextStyle:
                      CustomTextStyles.headlineSmallBlack900Regular,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 31.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineBlack9004.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder29,
                  ),
                  child: Text(
                    "lbl_732".tr,
                    style: CustomTextStyles.headlineSmallBlack900Regular,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Container(
            width: 285.h,
            margin: EdgeInsets.only(right: 41.h),
            child: Text(
              "msg_we_are_support_all".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
