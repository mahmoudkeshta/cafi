import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/shop_controller.dart';
import '../models/dynamictext1_item_model.dart';

// ignore: must_be_immutable
class Dynamictext1ItemWidget extends StatelessWidget {
  Dynamictext1ItemWidget(
    this.dynamictext1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Dynamictext1ItemModel dynamictext1ItemModelObj;

  var controller = Get.find<ShopController>();

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
                  imagePath: dynamictext1ItemModelObj.dynamicImage!.value,
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
                dynamictext1ItemModelObj.dynamicText!.value,
                style: CustomTextStyles.titleMediumBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
