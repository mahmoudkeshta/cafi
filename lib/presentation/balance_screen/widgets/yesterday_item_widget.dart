import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/balance_controller.dart';
import '../models/yesterday_item_model.dart';

// ignore: must_be_immutable
class YesterdayItemWidget extends StatelessWidget {
  YesterdayItemWidget(
    this.yesterdayItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  YesterdayItemModel yesterdayItemModelObj;

  var controller = Get.find<BalanceController>();

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
              imagePath: ImageConstant.imgImage1650x50,
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
              top: 19.v,
              bottom: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_starbucks".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "msg_2x_hot_expressoo".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 25.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_3_252".tr,
                  style: CustomTextStyles.headlineSmallRedA700,
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
