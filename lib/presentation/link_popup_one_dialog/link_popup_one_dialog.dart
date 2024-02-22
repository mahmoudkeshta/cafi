import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/link_popup_one_controller.dart';

class LinkPopupOneDialog extends StatelessWidget {
  LinkPopupOneDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LinkPopupOneController controller;

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
          _buildSeventeen(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_link_with".tr,
              style: CustomTextStyles.headlineSmallBlack900_2,
            ),
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "lbl3".tr,
            margin: EdgeInsets.only(left: 3.h),
            buttonStyle: CustomButtonStyles.fillBlackTL30,
            buttonTextStyle: theme.textTheme.displayMedium!,
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "lbl3".tr,
            margin: EdgeInsets.only(left: 3.h),
            buttonStyle: CustomButtonStyles.fillBlackTL30,
            buttonTextStyle: theme.textTheme.displayMedium!,
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "lbl3".tr,
            margin: EdgeInsets.only(left: 3.h),
            buttonStyle: CustomButtonStyles.fillBlackTL30,
            buttonTextStyle: theme.textTheme.displayMedium!,
          ),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }
}
