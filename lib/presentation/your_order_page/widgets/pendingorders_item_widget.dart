import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/your_order_controller.dart';
import '../models/pendingorders_item_model.dart';

// ignore: must_be_immutable
class PendingordersItemWidget extends StatelessWidget {
  PendingordersItemWidget(
    this.pendingordersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PendingordersItemModel pendingordersItemModelObj;

  var controller = Get.find<YourOrderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Container(
            height: 120.adaptSize,
            width: 120.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 2.v),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage20120x120,
              height: 120.adaptSize,
              width: 120.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_mocha_frappe".tr,
                  style: CustomTextStyles.titleLargeSemiBold,
                ),
                Text(
                  "lbl_3_items".tr,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_3_50".tr,
                  style: CustomTextStyles.titleLargeSemiBold,
                ),
                Text(
                  "lbl_process".tr,
                  style: CustomTextStyles.titleLargePrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
