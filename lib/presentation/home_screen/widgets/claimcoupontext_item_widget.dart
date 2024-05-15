import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/claimcoupontext_item_model.dart';

// ignore: must_be_immutable
class ClaimcoupontextItemWidget extends StatelessWidget {
  ClaimcoupontextItemWidget(
    this.claimcoupontextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ClaimcoupontextItemModel claimcoupontextItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.yellow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 190.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              claimcoupontextItemModelObj.claimCouponText!.value,
              style: CustomTextStyles.titleLargeOnPrimaryBold,
            ),
          ),
          Obx(
            () => Text(
              claimcoupontextItemModelObj.freeAmountText!.value,
              style: CustomTextStyles.bodyMediumOnPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
