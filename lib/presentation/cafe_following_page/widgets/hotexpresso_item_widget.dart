import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import '../controller/cafe_following_controller.dart';
import '../models/hotexpresso_item_model.dart';

// ignore: must_be_immutable
class HotexpressoItemWidget extends StatelessWidget {
  HotexpressoItemWidget(
    this.hotexpressoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HotexpressoItemModel hotexpressoItemModelObj;

  var controller = Get.find<CafeFollowingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            color: theme.colorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              height: 150.adaptSize,
              width: 150.adaptSize,
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: hotexpressoItemModelObj.hotExpresso!.value,
                      height: 150.adaptSize,
                      width: 150.adaptSize,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: hotexpressoItemModelObj.favorite!.value,
                      height: 16.v,
                      width: 18.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 14.v,
                        right: 15.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Obx(
            () => Text(
              hotexpressoItemModelObj.hotExpresso1!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Row(
            children: [
              Obx(
                () => Text(
                  hotexpressoItemModelObj.price!.value,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Obx(
                  () => Text(
                    hotexpressoItemModelObj.price1!.value,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Obx(
                  () => Text(
                    hotexpressoItemModelObj.price2!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
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
                  color: appTheme.black900.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Obx(
                  () => Text(
                    hotexpressoItemModelObj.ratingCounter!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
