import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/core/utils/validation_functions.dart';
import 'package:coffee_app/widgets/custom_checkbox_button.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'controller/sign_in_action_controller.dart';

// ignore_for_file: must_be_immutable
class SignInActionScreen extends GetWidget<SignInActionController> {
  SignInActionScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(23.h),
                child: Column(
                  children: [
                    SizedBox(height: 94.v),
                    _buildEmailSection(),
                    SizedBox(height: 18.v),
                    _buildPasswordSection(),
                    SizedBox(height: 11.v),
                    _buildRememberMeSection(),
                    SizedBox(height: 20.v),
                    CustomElevatedButton(
                      text: "lbl_sign_in".tr,
                    ),
                    SizedBox(height: 22.v),
                    Text(
                      "msg_forgot_password".tr,
                      style: CustomTextStyles.titleLargeIndigoA700,
                    ),
                    SizedBox(height: 19.v),
                    _buildSignInWithSection(),
                    SizedBox(height: 17.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          decoration: IconButtonStyleHelper.fillBlack,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup184,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup183,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup171,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 19.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_don_t_have_a_account2".tr,
                            style: CustomTextStyles.titleLarge7f000000,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_sign_up".tr,
                            style: CustomTextStyles.titleLargeff2454f8.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAtSign35x35,
          height: 35.adaptSize,
          width: 35.adaptSize,
          margin: EdgeInsets.only(
            top: 319.v,
            bottom: 4.v,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 159.adaptSize,
                  width: 159.adaptSize,
                  margin: EdgeInsets.only(left: 55.h),
                ),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.only(left: 68.h),
                  child: Text(
                    "lbl_sign_in".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_access_to_your_account".tr,
                    style: CustomTextStyles.titleLargeAmberA400,
                  ),
                ),
                SizedBox(height: 14.v),
                Text(
                  "lbl_email".tr,
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
                SizedBox(height: 1.v),
                CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "msg_yevyev_gmail_com".tr,
                  hintStyle: theme.textTheme.titleLarge!,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  borderDecoration: TextFormFieldStyleHelper.underLineBlack1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSecurityShield45x35,
          height: 45.v,
          width: 35.h,
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Obx(
              () => CustomTextFormField(
                controller: controller.passwordController,
                hintText: "lbl_password".tr,
                hintStyle: CustomTextStyles.bodyMediumBlack900,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword.value =
                        !controller.isShowPassword.value;
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 19.v, 8.h, 13.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 62.v,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: controller.isShowPassword.value,
                borderDecoration: TextFormFieldStyleHelper.underLineBlack1,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRememberMeSection() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl_remember_me".tr,
        value: controller.rememberMeSection.value,
        onChange: (value) {
          controller.rememberMeSection.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInWithSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 15.v,
          ),
          child: SizedBox(
            width: 99.h,
            child: Divider(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 22.h),
          child: Text(
            "lbl_or_sign_in_with".tr,
            style: CustomTextStyles.titleLargeBlack900_3,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 15.v,
          ),
          child: SizedBox(
            width: 121.h,
            child: Divider(
              color: appTheme.black900,
              indent: 28.h,
            ),
          ),
        ),
      ],
    );
  }
}
