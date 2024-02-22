import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'controller/search_shop_action_filter_controller.dart';
import 'models/search_shop_action_filter_model.dart';

class SearchShopActionFilterPage extends StatelessWidget {
  SearchShopActionFilterPage({Key? key})
      : super(
          key: key,
        );

  SearchShopActionFilterController controller = Get.put(
      SearchShopActionFilterController(SearchShopActionFilterModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildWidgetStack(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetStack() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          SizedBox(
            height: 200.v,
            width: 380.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle194,
                  height: 200.v,
                  width: 380.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    margin: EdgeInsets.only(left: 29.h),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder50,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse20100x100,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(
                        50.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_brown".tr,
                    style: CustomTextStyles.headlineSmallBlack900_2,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "msg_free_delivery".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 18.v,
                width: 19.h,
                margin: EdgeInsets.only(
                  top: 12.v,
                  bottom: 32.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 9.v,
                  bottom: 23.v,
                ),
                child: Text(
                  "lbl_8_1_rating".tr,
                  style: CustomTextStyles.titleLargeAmberA400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
