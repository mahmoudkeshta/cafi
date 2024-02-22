import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_outlined_button.dart';
import '../controller/review_select_controller.dart';
import '../models/reviewselect_item_model.dart';

// ignore: must_be_immutable
class ReviewselectItemWidget extends StatelessWidget {
  ReviewselectItemWidget(
    this.reviewselectItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewselectItemModel reviewselectItemModelObj;

  var controller = Get.find<ReviewSelectController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Container(
            height: 120.adaptSize,
            width: 120.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: reviewselectItemModelObj.amakadoHot!.value,
                height: 120.adaptSize,
                width: 120.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Obx(
                    () => Text(
                      reviewselectItemModelObj.amakadoHot1!.value,
                      style: CustomTextStyles.titleLargeSemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 140.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          reviewselectItemModelObj.itemsCounter!.value,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Obx(
                        () => Text(
                          reviewselectItemModelObj.price!.value,
                          style: CustomTextStyles.titleLargeSemiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                CustomOutlinedButton(
                  height: 40.v,
                  width: 130.h,
                  text: "lbl_go_review".tr,
                  margin: EdgeInsets.only(left: 1.h),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                  buttonTextStyle: CustomTextStyles.titleLargePrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
