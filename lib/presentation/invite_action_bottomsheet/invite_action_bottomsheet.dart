import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'controller/invite_action_controller.dart';

class InviteActionBottomsheet extends StatelessWidget {
  InviteActionBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  InviteActionController controller;

  @override
  Widget build(BuildContext context) {
    return _buildShareLinkTo1();
  }

  /// Section Widget
  Widget _buildShareLinkTo() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 1.v,
          bottom: 14.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                "lbl_share_link_to".tr,
                style: CustomTextStyles.titleLargeMedium,
              ),
            ),
            SizedBox(height: 20.v),
            Row(
              children: [
                SizedBox(
                  width: 224.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(11.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup502,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "lbl_copy_link".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            decoration: AppDecoration.fillBlack9002.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder29,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage50,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "lbl_telegram".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            decoration: AppDecoration.fillBlack9002.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder29,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup183,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "lbl_twitter".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Column(
                    children: [
                      Container(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.fillBlack9002.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder29,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup171,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_facebook".tr,
                        style: CustomTextStyles.bodyMediumBlack900_1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildShareLinkTo1() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL202,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildShareLinkTo(),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              bottom: 14.v,
            ),
            child: Column(
              children: [
                CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  alignment: Alignment.centerRight,
                  child: CustomImageView(),
                ),
                SizedBox(height: 22.v),
                Container(
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillBlack9002.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder29,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage51,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_wechat".tr,
                  style: CustomTextStyles.bodyMediumBlack900_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
