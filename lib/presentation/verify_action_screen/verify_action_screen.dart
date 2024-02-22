import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'package:coffee_app/widgets/custom_elevated_button.dart';import 'package:coffee_app/widgets/custom_pin_code_text_field.dart';import 'controller/verify_action_controller.dart';class VerifyActionScreen extends GetWidget<VerifyActionController> {const VerifyActionScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 18.v), child: Column(children: [Container(height: 163.adaptSize, width: 163.adaptSize, padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 48.v), decoration: AppDecoration.pink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder81), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkOnprimary, height: 58.v, width: 77.h, alignment: Alignment.bottomCenter)), SizedBox(height: 18.v), Text("lbl_verify_code".tr, style: theme.textTheme.displaySmall), SizedBox(height: 8.v), Text("msg_check_code_in_your".tr, style: CustomTextStyles.titleLargeAmberA400), SizedBox(height: 30.v), Padding(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {}))), SizedBox(height: 26.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_receive_code2".tr, style: CustomTextStyles.titleLarge7f000000), TextSpan(text: " "), TextSpan(text: "lbl_sent_again".tr, style: CustomTextStyles.titleLargeff2454f8)]), textAlign: TextAlign.left), SizedBox(height: 27.v), CustomElevatedButton(text: "lbl_verify".tr), Spacer(), SizedBox(height: 5.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_your_have_any_problem2".tr, style: CustomTextStyles.titleLarge7f000000), TextSpan(text: " "), TextSpan(text: "lbl_help".tr, style: CustomTextStyles.titleLargeff2454f8.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 106.v, leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(25.h, 16.v, 376.h, 17.v), onTap: () {onTapArrowLeft();})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
