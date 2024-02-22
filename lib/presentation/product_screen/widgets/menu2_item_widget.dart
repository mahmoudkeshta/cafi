import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import '../controller/product_controller.dart';
import '../models/menu2_item_model.dart';

// ignore: must_be_immutable
class Menu2ItemWidget extends StatelessWidget {
  Menu2ItemWidget(
    this.menu2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Menu2ItemModel menu2ItemModelObj;

  var controller = Get.find<ProductController>();

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
      width: 180.h,
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
                      imagePath: menu2ItemModelObj.image1!.value,
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
                      imagePath: menu2ItemModelObj.image2!.value,
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
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              menu2ItemModelObj.text1!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Row(
            children: [
              Obx(
                () => Text(
                  menu2ItemModelObj.text2!.value,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Obx(
                  () => Text(
                    menu2ItemModelObj.text3!.value,
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
                    menu2ItemModelObj.text4!.value,
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
                  initialRating: 4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Obx(
                  () => Text(
                    menu2ItemModelObj.text5!.value,
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
