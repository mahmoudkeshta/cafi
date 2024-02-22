import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import '../controller/search_shop_controller.dart';
import '../models/userprofile2_item_model.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<SearchShopController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 160.v,
            width: 245.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: userprofile2ItemModelObj.starbucksImage!.value,
                    height: 160.v,
                    width: 202.h,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 85.adaptSize,
                    width: 85.adaptSize,
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: Obx(
                      () => CustomImageView(
                        imagePath: userprofile2ItemModelObj
                            .starbucksCircleImage!.value,
                        height: 85.adaptSize,
                        width: 85.adaptSize,
                        radius: BorderRadius.circular(
                          42.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 39.v,
              bottom: 39.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofile2ItemModelObj.starbucksText!.value,
                    style: CustomTextStyles.titleLargeMedium,
                  ),
                ),
                SizedBox(height: 2.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 10.v,
                      width: 11.h,
                      margin: EdgeInsets.only(
                        top: 3.v,
                        bottom: 6.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Obx(
                        () => Text(
                          userprofile2ItemModelObj.ratingText!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 101.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        height: 25.v,
                        width: 70.h,
                        text: "lbl_follow".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryTL12,
                        buttonTextStyle: theme.textTheme.labelLarge!,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Obx(
                          () => Text(
                            userprofile2ItemModelObj.followerCountText!.value,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ),
                    ],
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
