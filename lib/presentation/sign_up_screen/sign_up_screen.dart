import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'package:coffee_app/core/utils/validation_functions.dart';

import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
// ignore: unused_import

import 'controller/sign_up_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SignUp_ControllerImg signUp_ControllerImg = Get.put(SignUp_ControllerImg());
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            //  appBar: _buildAppBar(),
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
                                horizontal: 24.h, vertical: 11.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup,
                                  height: 159.adaptSize,
                                  width: 159.adaptSize),
                              SizedBox(height: 29.v),
                              Text("lbl_sign_up".tr,
                                  style: theme.textTheme.displaySmall),
                              SizedBox(height: 8.v),
                              Text("msg_register_new_account".tr,
                                  style: CustomTextStyles.titleLargeAmberA400),
                              SizedBox(height: 32.v),
                              _buildFullName(),
                              SizedBox(height: 34.v),
                              _buildPhone(),
                              SizedBox(height: 34.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPlaceMarker,
                                        height: 35.adaptSize,
                                        width: 35.adaptSize),
                                    _buildAddressRow()
                                  ])),
                              SizedBox(height: 4.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Divider(
                                      color:
                                          appTheme.black900.withOpacity(0.25),
                                      indent: 55.h)),
                              SizedBox(height: 37.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 69.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: 24.adaptSize,
                                                width: 24.adaptSize,
                                                margin: EdgeInsets.only(
                                                    bottom: 26.v),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h),
                                                    border: Border.all(
                                                        color: appTheme.black900
                                                            .withOpacity(0.5),
                                                        width: 2.h))),
                                            Expanded(
                                                child: Container(
                                                    width: 275.h,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "lbl_i_agree_with"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff000000),
                                                          TextSpan(
                                                              text:
                                                                  "msg_terms_of_services"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff2454f8),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_and".tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff000000),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_policy_privacy"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff2454f8),
                                                          TextSpan(
                                                              text: "lbl".tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff000000)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left)))
                                          ]))),
                              SizedBox(height: 27.v),
                              _buildSignUpButton(),
                              SizedBox(height: 73.v),
                              GestureDetector(
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_your_have_any_problem2".tr,
                                          style: CustomTextStyles
                                              .titleLarge7f000000),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_help".tr,
                                          style: CustomTextStyles
                                              .titleLargeff2454f8
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline))
                                    ]),
                                    textAlign: TextAlign.left),
                                onTap: () {
                                  SignUp_ControllerImg().gotohelp();
                                },
                              ),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
/*  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 106.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 377.h, 17.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }
*/
  /// Section Widget
  Widget _buildFullNameRow() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, top: 2.v),
            child: CustomTextFormField(
                controller: controller.fullNameRowController,
                hintText: "lbl_full_name".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                })));
  }

  /// Section Widget
  Widget _buildFullName() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgUser35x35,
          height: 35.adaptSize,
          width: 35.adaptSize,
          margin: EdgeInsets.only(bottom: 4.v)),
      _buildFullNameRow()
    ]);
  }

  /// Section Widget
  Widget _buildPhoneRow() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, top: 2.v),
            child: CustomTextFormField(
                controller: controller.phoneRowController,
                hintText: "lbl_email_or_phone".tr,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                })));
  }

  /// Section Widget
  Widget _buildPhone() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgAtSign,
          height: 35.adaptSize,
          width: 35.adaptSize,
          margin: EdgeInsets.only(bottom: 5.v)),
      _buildPhoneRow()
    ]);
  }

  /// Section Widget
  Widget _buildAddressRow() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, top: 2.v),
            child: CustomTextFormField(
                controller: controller.addressRowController,
                hintText: "lbl_your_address".tr,
                textInputAction: TextInputAction.done)));
  }

  /// Section Widget
  Widget _buildSignUpButton() {
    return CustomElevatedButton(text: "lbl_sign_up".tr);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
// ignore_for_file: unused_import
