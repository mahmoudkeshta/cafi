import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import '../gift_card_code_screen/widgets/knthree_item_widget.dart';
import 'controller/gift_card_code_controller.dart';
import 'models/knthree_item_model.dart';

// ignore_for_file: must_be_immutable
class GiftCardCodeScreen extends GetWidget<GiftCardCodeController> {
  const GiftCardCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 105.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 94.v),
              Container(
                height: 148.adaptSize,
                width: 148.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 32.h,
                  vertical: 39.v,
                ),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder74,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary,
                  height: 52.v,
                  width: 70.h,
                  alignment: Alignment.bottomRight,
                ),
              ),
              SizedBox(height: 46.v),
              Opacity(
                opacity: 0.75,
                child: Container(
                  width: 279.h,
                  margin: EdgeInsets.only(
                    left: 51.h,
                    right: 50.h,
                  ),
                  child: Text(
                    "msg_you_have_successfully".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleLargeBlack900_2,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Text(
                "msg_16_digital_card".tr,
                style: CustomTextStyles.headlineSmallBlack900Medium,
              ),
              SizedBox(height: 17.v),
              _buildKNThree(),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 104.h),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup582,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "lbl_save".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 38.h),
                        child: Column(
                          children: [
                            CustomIconButton(
                              height: 54.adaptSize,
                              width: 54.adaptSize,
                              padding: EdgeInsets.all(8.h),
                              decoration: IconButtonStyleHelper.fillBlack,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup456,
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Text(
                              "lbl_share".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBackHome(),
      ),
    );
  }

  /// Section Widget
  Widget _buildKNThree() {
    return Obx(
      () => Wrap(
        runSpacing: 16.v,
        spacing: 16.h,
        children: List<Widget>.generate(
          controller.giftCardCodeModelObj.value.knthreeItemList.value.length,
          (index) {
            KnthreeItemModel model = controller
                .giftCardCodeModelObj.value.knthreeItemList.value[index];

            return KnthreeItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackHome() {
    return CustomElevatedButton(
      text: "lbl_back_home".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 23.h,
        bottom: 34.v,
      ),
    );
  }
}
