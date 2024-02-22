import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/cafe_following_controller.dart';
import '../models/userprofile9_item_model.dart';

// ignore: must_be_immutable
class Userprofile9ItemWidget extends StatelessWidget {
  Userprofile9ItemWidget(
    this.userprofile9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile9ItemModel userprofile9ItemModelObj;

  var controller = Get.find<CafeFollowingController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.fillBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          children: [
            Container(
              height: 85.adaptSize,
              width: 85.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder40,
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: userprofile9ItemModelObj.circleImage!.value,
                  height: 85.adaptSize,
                  width: 85.adaptSize,
                  radius: BorderRadius.circular(
                    42.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 2.v,
                bottom: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofile9ItemModelObj.textStarbucks!.value,
                      style: CustomTextStyles.titleLargeMedium,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              userprofile9ItemModelObj.imageRating!.value,
                          height: 10.v,
                          width: 11.h,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 6.v,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Obx(
                          () => Text(
                            userprofile9ItemModelObj.textRating!.value,
                            style: CustomTextStyles.bodyMediumBlack900_1,
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
                        Container(
                          width: 70.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.pink.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Obx(
                            () => Text(
                              userprofile9ItemModelObj.follow!.value,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Obx(
                            () => Text(
                              userprofile9ItemModelObj.textFollowers!.value,
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
      ),
    );
  }
}
