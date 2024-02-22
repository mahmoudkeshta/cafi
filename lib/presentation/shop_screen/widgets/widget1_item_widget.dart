import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/shop_controller.dart';
import '../models/widget1_item_model.dart';

// ignore: must_be_immutable
class Widget1ItemWidget extends StatelessWidget {
  Widget1ItemWidget(
    this.widget1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget1ItemModel widget1ItemModelObj;

  var controller = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 250.v,
        width: 340.h,
        margin: EdgeInsets.only(left: 400.h),
        decoration: AppDecoration.fillPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Obx(
          () => CustomImageView(
            imagePath: widget1ItemModelObj.imageTwentyThree!.value,
            height: 250.v,
            width: 340.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
