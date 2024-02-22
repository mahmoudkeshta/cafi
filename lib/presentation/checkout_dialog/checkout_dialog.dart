import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_radio_button.dart';
import 'controller/checkout_controller.dart';

// ignore: must_be_immutable
class CheckoutDialog extends StatelessWidget {
  CheckoutDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  CheckoutController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 381.h,
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_select".tr,
              style: CustomTextStyles.headlineSmallBlack900_2,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Obx(
              () => Column(
                children: [
                  CustomRadioButton(
                    text: "lbl_koi_th_ifl".tr,
                    value: controller.checkoutModelObj.value.radioList.value[0],
                    groupValue: controller.select.value,
                    padding: EdgeInsets.fromLTRB(15.h, 13.v, 30.h, 13.v),
                    textStyle: CustomTextStyles.titleLargeMedium,
                    decoration: RadioStyleHelper.fillAmberA,
                    onChange: (value) {
                      controller.select.value = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: CustomRadioButton(
                      text: "msg_koi_th_toul_kork".tr,
                      value:
                          controller.checkoutModelObj.value.radioList.value[1],
                      groupValue: controller.select.value,
                      padding: EdgeInsets.fromLTRB(15.h, 13.v, 30.h, 13.v),
                      textStyle: CustomTextStyles.titleLargeMedium,
                      onChange: (value) {
                        controller.select.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: CustomRadioButton(
                      text: "msg_koi_th_santhormok".tr,
                      value:
                          controller.checkoutModelObj.value.radioList.value[2],
                      groupValue: controller.select.value,
                      padding: EdgeInsets.fromLTRB(15.h, 13.v, 30.h, 13.v),
                      textStyle: CustomTextStyles.titleLargeMedium,
                      onChange: (value) {
                        controller.select.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.v),
                    child: CustomRadioButton(
                      text: "msg_koi_th_eden_garden".tr,
                      value:
                          controller.checkoutModelObj.value.radioList.value[3],
                      groupValue: controller.select.value,
                      padding: EdgeInsets.fromLTRB(15.h, 13.v, 30.h, 13.v),
                      textStyle: CustomTextStyles.titleLargeMedium,
                      onChange: (value) {
                        controller.select.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: CustomRadioButton(
                      text: "lbl_koi_olympic".tr,
                      value:
                          controller.checkoutModelObj.value.radioList.value[4],
                      groupValue: controller.select.value,
                      padding: EdgeInsets.fromLTRB(15.h, 12.v, 30.h, 12.v),
                      textStyle: CustomTextStyles.titleLargeMedium,
                      onChange: (value) {
                        controller.select.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
