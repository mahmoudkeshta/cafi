import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/refund_controller.dart';
import '../models/active_item_model.dart';

// ignore: must_be_immutable
class ActiveItemWidget extends StatelessWidget {
  ActiveItemWidget(
    this.activeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ActiveItemModel activeItemModelObj;

  var controller = Get.find<RefundController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 17.v,
              bottom: 20.v,
            ),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder23,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse2050x50,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 20.v,
              bottom: 20.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_luna".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "msg_2x_ice_green_tea".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 24.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_in_review".tr,
                  style: CustomTextStyles.headlineSmallPrimaryRegular,
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_10_20am".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
