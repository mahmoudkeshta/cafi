import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'controller/invite_qr_controller.dart';

class InviteQrDialog extends StatelessWidget {
  InviteQrDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  InviteQrController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.h,
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 39.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 34.h),
            child: Text(
              "lbl_scan_qr_code".tr,
              style: CustomTextStyles.headlineLargeRegular,
            ),
          ),
          SizedBox(height: 28.v),
          Align(
            alignment: Alignment.center,
            child: QrImageView(
              data: 'https://www.google.com',
              size: 200.adaptSize,
            ),
          ),
          SizedBox(height: 21.v),
          Text(
            "msg_you_can_share_it".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.only(left: 115.h),
            child: CustomIconButton(
              height: 54.adaptSize,
              width: 54.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup582,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 115.h),
            child: Text(
              "lbl_save".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
