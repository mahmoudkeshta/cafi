import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/core/utils/validation_functions.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'controller/create_password_three_controller.dart';

// ignore_for_file: must_be_immutable
class CreatePasswordThreeScreen
    extends GetWidget<CreatePasswordThreeController> {
  CreatePasswordThreeScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 19.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage15,
                                  height: 162.adaptSize,
                                  width: 162.adaptSize),
                              SizedBox(height: 14.v),
                              Text("lbl_create_new_pass".tr,
                                  style: theme.textTheme.displaySmall),
                              SizedBox(height: 12.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 8.h),
                                      child: Text(
                                          "msg_enter_your_new_secure".tr,
                                          style: CustomTextStyles
                                              .titleLargeAmberA400))),
                              SizedBox(height: 27.v),
                              _buildPassword(),
                              SizedBox(height: 29.v),
                              _buildConfirmpassword(),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, right: 69.h),
                                      child: Row(children: [
                                        Opacity(
                                            opacity: 0.5,
                                            child: Text("lbl2".tr,
                                                style: CustomTextStyles
                                                    .titleLargeBlack900_4)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h,
                                                top: 3.v,
                                                bottom: 2.v),
                                            child: Text(
                                                "msg_password_must_at".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeBlack900_3))
                                      ]))),
                              SizedBox(height: 26.v),
                              CustomElevatedButton(
                                  text: "lbl_reset_password".tr,
                                  margin: EdgeInsets.only(right: 8.h)),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 106.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(25.h, 16.v, 376.h, 17.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSecurityShield,
              height: 45.v,
              width: 35.h),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 7.v),
                  child: CustomTextFormField(
                      controller: controller.passwordController,
                      hintText: "lbl_password".tr,
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true)))
        ]));
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 45.v,
              width: 35.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(right: 3.h, bottom: 4.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.h, vertical: 4.v),
                        decoration: AppDecoration.fillBlack.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder7),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgVector2,
                            height: 5.v,
                            width: 6.h,
                            alignment: Alignment.bottomRight))),
                CustomImageView(
                    imagePath: ImageConstant.imgSecurityShield,
                    height: 45.v,
                    width: 35.h,
                    alignment: Alignment.center)
              ])),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 6.v),
                  child: CustomTextFormField(
                      controller: controller.confirmpasswordController,
                      hintText: "msg_confirm_password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
