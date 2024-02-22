import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import '../controller/review_controller.dart';
import '../models/review_item_model.dart';

// ignore: must_be_immutable
class ReviewItemWidget extends StatelessWidget {
  ReviewItemWidget(
    this.reviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewItemModel reviewItemModelObj;

  var controller = Get.find<ReviewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: reviewItemModelObj.jokiboy!.value,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(
                30.h,
              ),
              margin: EdgeInsets.only(bottom: 96.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    reviewItemModelObj.jokiBoy!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 6.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.v,
                        bottom: 6.v,
                      ),
                      child: CustomRatingBar(
                        ignoreGestures: true,
                        initialRating: 0,
                        itemSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Obx(
                        () => Text(
                          reviewItemModelObj.ratingCounter!.value,
                          style: CustomTextStyles.bodyLargeAmberA400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    reviewItemModelObj.yummmy!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 7.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Obx(
                        () => CustomImageView(
                          imagePath: reviewItemModelObj.yummmy1!.value,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.only(right: 5.h),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Obx(
                        () => CustomImageView(
                          imagePath: reviewItemModelObj.yummmy2!.value,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5.h),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Obx(
                        () => CustomImageView(
                          imagePath: reviewItemModelObj.rating!.value,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5.h),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Obx(
                        () => CustomImageView(
                          imagePath: reviewItemModelObj.yummmy3!.value,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.only(left: 5.h),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
