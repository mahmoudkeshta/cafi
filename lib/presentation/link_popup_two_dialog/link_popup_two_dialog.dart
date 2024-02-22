import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'controller/link_popup_two_controller.dart';

class LinkPopupTwoDialog extends StatelessWidget {
  LinkPopupTwoDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LinkPopupTwoController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 381.h,
      padding: EdgeInsets.symmetric(
        horizontal: 37.h,
        vertical: 39.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 12.v),
          Container(
            height: 148.adaptSize,
            width: 148.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 37.h,
              vertical: 44.v,
            ),
            decoration: AppDecoration.pink.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder74,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkOnprimary,
              height: 52.v,
              width: 70.h,
              alignment: Alignment.bottomRight,
            ),
          ),
          SizedBox(height: 31.v),
          Opacity(
            opacity: 0.75,
            child: SizedBox(
              width: 306.h,
              child: Text(
                "msg_you_cart_have_successfully".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.headlineLargeBlack900,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Opacity(
            opacity: 0.75,
            child: Text(
              "msg_you_can_pay_everyway".tr,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
        ],
      ),
    );
  }
}
