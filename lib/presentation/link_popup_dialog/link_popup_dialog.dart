import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'controller/link_popup_controller.dart';

class LinkPopupDialog extends StatelessWidget {
  LinkPopupDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LinkPopupController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 107.v,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          _buildCardNumber(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Row(
              children: [
                Text(
                  "lbl_card_number".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage213x46,
                  height: 13.v,
                  width: 46.h,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 13.v,
                    bottom: 11.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 29.v,
                  width: 46.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 5.v,
                    bottom: 3.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage3,
                  height: 29.v,
                  width: 47.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 5.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 18.h,
            ),
            child: CustomTextFormField(
              controller: controller.cardNumberController,
              alignment: Alignment.center,
              borderDecoration: TextFormFieldStyleHelper.outlineBlackTL30,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 58.h,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_date_of_expiry".tr,
                    style: CustomTextStyles.headlineSmallBlack900_2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 54.h,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_cvv".tr,
                    style: CustomTextStyles.headlineSmallBlack900_2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    width: 189.h,
                    controller: controller.dateController,
                    borderDecoration: TextFormFieldStyleHelper.outlineBlackTL30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: CustomTextFormField(
                      width: 121.h,
                      controller: controller.editTextController,
                      textInputAction: TextInputAction.done,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineBlackTL30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.v),
          Container(
            width: 285.h,
            margin: EdgeInsets.only(
              left: 17.h,
              right: 58.h,
            ),
            child: Text(
              "msg_we_are_support_all".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
