import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/core/utils/validation_functions.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_floating_text_field.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'controller/sign_up_action_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpActionScreen extends GetWidget<SignUpActionController> {
  SignUpActionScreen({Key? key}) : super(key: key);
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
                              SizedBox(height: 15.v),
                              _buildFullName1(),
                              SizedBox(height: 17.v),
                              _buildEmail1(),
                              SizedBox(height: 14.v),
                              _buildLocation1(),
                              SizedBox(height: 37.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 69.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 26.v),
                                                child: CustomIconButton(
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(6.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .outlineBlack,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheckmark))),
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
                              _buildSignUp(),
                              SizedBox(height: 73.v),
                              RichText(
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
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 377.h, 17.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomFloatingTextField(
        controller: controller.fullNameController,
        labelText: "lbl_yev_yev".tr,
        labelStyle: theme.textTheme.titleLarge!,
        hintText: "lbl_yev_yev".tr);
  }

  /// Section Widget
  Widget _buildFullName1() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgUser1,
          height: 35.adaptSize,
          width: 35.adaptSize,
          margin: EdgeInsets.only(top: 17.v, bottom: 4.v)),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_fullname2".tr,
                        style: CustomTextStyles.bodyMediumBlack900),
                    _buildFullName()
                  ])))
    ]);
  }

  /// Section Widget
  Widget _buildEmail() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: CustomFloatingTextField(
                controller: controller.emailController,
                labelText: "lbl_email".tr,
                labelStyle: theme.textTheme.titleLarge!,
                hintText: "lbl_email".tr,
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
  Widget _buildEmail1() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgAtSign35x35,
          height: 35.adaptSize,
          width: 35.adaptSize,
          margin: EdgeInsets.only(top: 16.v, bottom: 5.v)),
      _buildEmail()
    ]);
  }

  /// Section Widget
  Widget _buildLocation() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: CustomFloatingTextField(
                controller: controller.locationController,
                labelText: "lbl_location".tr,
                labelStyle: theme.textTheme.titleLarge!,
                hintText: "lbl_location".tr,
                textInputAction: TextInputAction.done)));
  }

  /// Section Widget
  Widget _buildLocation1() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgPlaceMarker35x35,
          height: 35.adaptSize,
          width: 35.adaptSize,
          margin: EdgeInsets.only(top: 19.v, bottom: 5.v)),
      _buildLocation()
    ]);
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(text: "lbl_sign_up".tr,
    
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
