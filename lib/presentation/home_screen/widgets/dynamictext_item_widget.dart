import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/dynamictext_item_model.dart';

// ignore: must_be_immutable
class DynamictextItemWidget extends StatelessWidget {
  DynamictextItemWidget(
    this.dynamictextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamictextItemModel dynamictextItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Padding(
        padding: EdgeInsets.only(
          top: 10.v,
          bottom: 6.v,
        ),
        child: Column(
          children: [
            Container(
              height: 70.adaptSize,
              width: 70.adaptSize,
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: dynamictextItemModelObj.dynamicImage!.value,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
            Obx(
              () => Text(
                dynamictextItemModelObj.dynamicText!.value,
                style: CustomTextStyles.titleMediumBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
