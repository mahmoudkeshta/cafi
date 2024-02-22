import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'controller/invioce_controller.dart';

// ignore_for_file: must_be_immutable
class InvioceScreen extends GetWidget<InvioceController> {
  const InvioceScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 820.v,
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 22.h,
            top: 82.v,
            right: 22.h,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 1.h,
                    right: 2.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 20.v,
                  ),
                  decoration: AppDecoration.fillBlack9002.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup100x100,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                      ),
                      SizedBox(height: 11.v),
                      Text(
                        "lbl_starbucks".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                      SizedBox(height: 20.v),
                      _buildXIceFrappe(
                        menuTitle: "lbl_1x_mocha_frappe".tr,
                        menuPrice: "lbl_1_50".tr,
                      ),
                      SizedBox(height: 2.v),
                      _buildXIceFrappe(
                        menuTitle: "lbl_2x_ice_frappe".tr,
                        menuPrice: "lbl_3_00".tr,
                      ),
                      SizedBox(height: 17.v),
                      _buildXIceFrappe(
                        menuTitle: "lbl_sub_total".tr,
                        menuPrice: "lbl_4_50".tr,
                      ),
                      SizedBox(height: 5.v),
                      _buildXIceFrappe(
                        menuTitle: "lbl_vat".tr,
                        menuPrice: "lbl_0_50".tr,
                      ),
                      SizedBox(height: 4.v),
                      _buildXIceFrappe(
                        menuTitle: "lbl_total".tr,
                        menuPrice: "lbl_5_00".tr,
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        "lbl_thank_you".tr,
                        style: CustomTextStyles.displaySmallRegular,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "msg_wifi_yevyev_pass".tr,
                        style: CustomTextStyles.titleLargeMedium,
                      ),
                      SizedBox(height: 18.v),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 179.v),
                  child: SizedBox(
                    width: 381.h,
                    child: Divider(
                      color: appTheme.black900.withOpacity(0.25),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 274.v),
                  child: SizedBox(
                    width: 381.h,
                    child: Divider(
                      color: appTheme.black900.withOpacity(0.25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 105.v,
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_your_invioce".tr,
      ),
    );
  }

  /// Common widget
  Widget _buildXIceFrappe({
    required String menuTitle,
    required String menuPrice,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            menuTitle,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 174.h,
            bottom: 2.v,
          ),
          child: Text(
            menuPrice,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
