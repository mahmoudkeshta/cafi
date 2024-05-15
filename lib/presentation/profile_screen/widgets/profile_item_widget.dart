import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,//68
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: profileItemModelObj.balance!.value,
                height: 53.v,
                width: 51.h,
              ),
            ),
            SizedBox(height: 3.v),
            Obx(
              () => Text(
                profileItemModelObj.balance1!.value,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
