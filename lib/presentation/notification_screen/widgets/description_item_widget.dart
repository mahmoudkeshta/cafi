import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/notification_controller.dart';
import '../models/description_item_model.dart';

// ignore: must_be_immutable
class DescriptionItemWidget extends StatelessWidget {
  DescriptionItemWidget(
    this.descriptionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DescriptionItemModel descriptionItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder23,
                  ),
                  child: Obx(
                    () => CustomImageView(
                      imagePath: descriptionItemModelObj.circleImage!.value,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      radius: BorderRadius.circular(
                        25.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 278.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      top: 4.v,
                    ),
                    child: Obx(
                      () => Text(
                        descriptionItemModelObj.description!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Obx(
              () => Text(
                descriptionItemModelObj.time!.value,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
