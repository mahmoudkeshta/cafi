import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/order_details_controller.dart';
import '../models/userprofile6_item_model.dart';

// ignore: must_be_immutable
class Userprofile6ItemWidget extends StatelessWidget {
  Userprofile6ItemWidget(
    this.userprofile6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile6ItemModel userprofile6ItemModelObj;

  var controller = Get.find<OrderDetailsController>();

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
                imagePath: userprofile6ItemModelObj.image!.value,
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
                    userprofile6ItemModelObj.title!.value,
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                ),
                Obx(
                  () => Text(
                    userprofile6ItemModelObj.itemCount!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    userprofile6ItemModelObj.price!.value,
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
