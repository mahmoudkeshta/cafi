import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_radio_button.dart';
import 'controller/payment_controller.dart';

class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_select_payment".tr,
                          style: CustomTextStyles.headlineSmallBlack900_2),
                      SizedBox(height: 6.v),
                      _buildSelectPayment(),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildAddOtherBank()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "lbl_payment".tr,
            margin: EdgeInsets.only(top: 62.v, bottom: 7.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildSelectPayment() {
    return Obx(() => Column(children: [
          CustomRadioButton(
              text: "lbl_aba_bank".tr,
              value: controller.paymentModelObj.value.radioList.value[0],
              groupValue: controller.selectPayment.value,
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v),
              decoration: RadioStyleHelper.fillAmberA,
              onChange: (value) {
                controller.selectPayment.value = value;
              }),
          Padding(
              padding: EdgeInsets.only(top: 10.v),
              child: CustomRadioButton(
                  text: "lbl_wing_bank".tr,
                  value: controller.paymentModelObj.value.radioList.value[1],
                  groupValue: controller.selectPayment.value,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v),
                  onChange: (value) {
                    controller.selectPayment.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 10.v),
              child: CustomRadioButton(
                  text: "lbl_acleda_bank".tr,
                  
                  value: controller.paymentModelObj.value.radioList.value[2],
                  groupValue: controller.selectPayment.value,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v),
                  onChange: (value) {
                    controller.selectPayment.value = value;
                  },))
        ]));
  }

  /// Section Widget
  Widget _buildAddOtherBank() {
    return CustomElevatedButton(
        text: "lbl_add_other_bank".tr,
        margin: EdgeInsets.only(left: 24.h, right: 23.h, bottom: 34.v),
        onPressed: (){
          Get.offNamed(AppRoutes.pickupScreen);



          
          
        }
        
        );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
