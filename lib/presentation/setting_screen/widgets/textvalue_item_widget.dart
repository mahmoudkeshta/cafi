import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/setting_controller.dart';
import '../models/textvalue_item_model.dart';

// ignore: must_be_immutable
class TextvalueItemWidget extends StatelessWidget {
  TextvalueItemWidget(
    this.textvalueItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TextvalueItemModel textvalueItemModelObj;

  var controller = Get.find<SettingController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 66.h,
      child: Padding(
        padding: EdgeInsets.only(
          top: 15.v,
          bottom: 10.v,
        ),
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: textvalueItemModelObj.userImage!.value,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                textvalueItemModelObj.textValue!.value,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
