import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/cart_one_controller.dart';
import 'models/cart_one_model.dart';

class CartOnePage extends StatelessWidget {
  CartOnePage({Key? key})
      : super(
          key: key,
        );

  CartOneController controller = Get.put(CartOneController(CartOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFifteen(),
                    SizedBox(height: 10.v),
                    _buildFiftyEight(),
                    SizedBox(height: 20.v),
                    Divider(
                      color: appTheme.black900.withOpacity(0.25),
                      indent: 1.h,
                    ),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "lbl_summary_items".tr,
                        style: CustomTextStyles.headlineSmallBlack900_2,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        right: 1.h,
                      ),
                      child: _buildXIceFrappe(
                        itemName: "lbl_1x_mocha_frappe".tr,
                        itemPrice: "lbl_3_50".tr,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        right: 1.h,
                      ),
                      child: _buildXIceFrappe(
                        itemName: "lbl_2x_ice_frappe".tr,
                        itemPrice: "lbl_3_00".tr,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Divider(
                      color: appTheme.black900.withOpacity(0.25),
                      indent: 2.h,
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        right: 1.h,
                      ),
                      child: _buildXIceFrappe(
                        itemName: "lbl_sub_total".tr,
                        itemPrice: "lbl_6_50".tr,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        right: 1.h,
                      ),
                      child: _buildXIceFrappe(
                        itemName: "lbl_vat".tr,
                        itemPrice: "lbl_0_50".tr,
                      ),
                    ),
                    SizedBox(height: 82.v),
                    Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildXIceFrappe(
                        itemName: "lbl_total".tr,
                        itemPrice: "lbl_7_00".tr,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomElevatedButton(
                      text: "lbl_pay".tr,
                      margin: EdgeInsets.only(left: 2.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen() {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPayment(
            payment: "lbl_address".tr,
            select: "lbl_edit".tr,
          ),
          SizedBox(height: 11.v),
          Text(
            "msg_st_71_terk_thlar2".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyEight() {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildPayment(
            payment: "lbl_payment".tr,
            select: "lbl_select".tr,
          ),
          SizedBox(height: 6.v),
          CustomElevatedButton(
            text: "lbl_aba_bank".tr,
            margin: EdgeInsets.only(
              left: 31.h,
              right: 30.h,
            ),
            buttonStyle: CustomButtonStyles.fillAmberATL30,
            buttonTextStyle: CustomTextStyles.headlineSmallBlack900Bold,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPayment({
    required String payment,
    required String select,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          payment,
          style: CustomTextStyles.headlineSmallBlack900Medium.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 5.v,
          ),
          child: Text(
            select,
            style: CustomTextStyles.titleLargeIndigoA700.copyWith(
              color: appTheme.indigoA700,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildXIceFrappe({
    required String itemName,
    required String itemPrice,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            itemName,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Text(
          itemPrice,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}
