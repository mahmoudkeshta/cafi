import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/core/utils/validation_functions.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'controller/forgot_password_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 19.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 162.adaptSize,
                                      width: 162.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 36.h, vertical: 22.v),
                                      decoration: AppDecoration.outline
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder81),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgImage6,
                                          height: 108.v,
                                          width: 80.h,
                                          alignment: Alignment.center)),
                                  SizedBox(height: 19.v),
                                  Text("lbl_forgot_password".tr,
                                      style: theme.textTheme.displaySmall),
                                  SizedBox(height: 7.v),
                                  Text("msg_enter_your_email".tr,
                                      style:
                                          CustomTextStyles.titleLargeAmberA400),
                                  SizedBox(height: 28.v),
                                  _buildEmail(),
                                  SizedBox(height: 19.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("msg_we_ll_call_or_text".tr,
                                          style: CustomTextStyles
                                              .bodyLargeBlack900_1)),
                                  SizedBox(height: 28.v),
                                  CustomElevatedButton(text: "lbl_continue".tr),
                                  Spacer(),
                                  SizedBox(height: 4.v),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "msg_your_have_any_problem2".tr,
                                            style: CustomTextStyles
                                                .titleLarge7f000000),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_help".tr,
                                            style: CustomTextStyles
                                                .titleLargeff2454f8)
                                      ]),
                                      textAlign: TextAlign.left)
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
  Widget _buildEmail() {
    return SizedBox(
        height: 45.v,
        width: 380.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgAtSign35x35,
                    height: 45.adaptSize,
                    width: 45.adaptSize),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 20.h, top: 9.v),
                        child: CustomTextFormField(
                            controller: controller.emailController,
                            hintText: "msg_yevyev_gmail_com".tr,
                            hintStyle: theme.textTheme.titleLarge!,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            })))
              ])),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: SizedBox(
                      width: 315.h,
                      child:
                          Divider(color: appTheme.black900.withOpacity(0.25)))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
