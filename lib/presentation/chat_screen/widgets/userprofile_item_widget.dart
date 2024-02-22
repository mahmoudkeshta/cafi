import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/chat_controller.dart';
import '../models/userprofile_item_model.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder35,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: userprofileItemModelObj.userImage!.value,
                height: 70.adaptSize,
                width: 70.adaptSize,
                radius: BorderRadius.circular(
                  35.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            height: 63.v,
            width: 151.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.companyName!.value,
                        style: CustomTextStyles.headlineSmallBlack900_2,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Obx(
                    () => Text(
                      userprofileItemModelObj.voiceMessage!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: userprofileItemModelObj.companyLogo!.value,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 34.v,
            ),
            child: Obx(
              () => Text(
                userprofileItemModelObj.time!.value,
                style: CustomTextStyles.bodyLargeAmberA400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
