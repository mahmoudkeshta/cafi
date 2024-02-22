import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import '../controller/shop_controller.dart';
import '../models/shop_item_model.dart';

// ignore: must_be_immutable
class ShopItemWidget extends StatelessWidget {
  ShopItemWidget(
    this.shopItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ShopItemModel shopItemModelObj;

  var controller = Get.find<ShopController>();

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
                      imagePath: shopItemModelObj.mochaFrappe!.value,
                      height: 150.v,
                      width: 148.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: shopItemModelObj.favorite!.value,
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
          SizedBox(
            height: 62.v,
            width: 150.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Obx(
                    () => Text(
                      shopItemModelObj.mochaFrappe1!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16.v),
                    child: Obx(
                      () => Text(
                        shopItemModelObj.price!.value,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16.v),
                    child: Obx(
                      () => Text(
                        shopItemModelObj.price1!.value,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 49.h,
                      bottom: 18.v,
                    ),
                    child: Obx(
                      () => Text(
                        shopItemModelObj.price2!.value,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 44.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            bottom: 6.v,
                          ),
                          child: CustomRatingBar(
                            ignoreGestures: true,
                            initialRating: 3,
                          ),
                        ),
                        Obx(
                          () => Text(
                            shopItemModelObj.ratingCounter!.value,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
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
