import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/pickup_controller.dart';
import '../models/pickup_item_model.dart';

// ignore: must_be_immutable
class PickupItemWidget extends StatelessWidget {
  PickupItemWidget(
    this.pickupItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PickupItemModel pickupItemModelObj;

  var controller = Get.find<PickupController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100.adaptSize,
            width: 100.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: pickupItemModelObj.mochaFrappe!.value,
                height: 100.adaptSize,
                width: 100.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    pickupItemModelObj.mochaFrappe1!.value,
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                ),
                Obx(
                  () => Text(
                    pickupItemModelObj.itemsCounter!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    pickupItemModelObj.price!.value,
                    style: CustomTextStyles.titleLargeSemiBold,
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
