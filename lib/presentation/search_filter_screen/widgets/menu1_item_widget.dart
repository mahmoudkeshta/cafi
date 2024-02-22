import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import '../controller/search_filter_controller.dart';
import '../models/menu1_item_model.dart';

// ignore: must_be_immutable
class Menu1ItemWidget extends StatelessWidget {
  Menu1ItemWidget(
    this.menu1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Menu1ItemModel menu1ItemModelObj;

  var controller = Get.find<SearchFilterController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 150.v,
            width: 165.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: menu1ItemModelObj.menuImage1!.value,
                    height: 150.v,
                    width: 165.h,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteOnprimary,
                  height: 16.v,
                  width: 18.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 14.v,
                    right: 30.h,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      menu1ItemModelObj.menuText1!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: Obx(
                    () => Text(
                      menu1ItemModelObj.menuText2!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(
                  width: 155.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          menu1ItemModelObj.menuText3!.value,
                          style: CustomTextStyles.headlineSmallBlack900Regular
                              .copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Obx(
                        () => Text(
                          menu1ItemModelObj.menuText4!.value,
                          style: CustomTextStyles.headlineSmallBlack900Regular,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9.v),
                CustomRatingBar(
                  alignment: Alignment.center,
                  ignoreGestures: true,
                  initialRating: 3,
                  itemSize: 18,
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(left: 37.h),
                  child: Obx(
                    () => Text(
                      menu1ItemModelObj.menuText5!.value,
                      style: CustomTextStyles.bodyLargeAmberA400,
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
