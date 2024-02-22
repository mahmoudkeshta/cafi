import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'package:coffee_app/widgets/custom_elevated_button.dart';import 'package:coffee_app/widgets/custom_text_form_field.dart';import 'controller/add_gift_controller.dart';class AddGiftScreen extends GetWidget<AddGiftController> {const AddGiftScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 39.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_gift_card_code".tr, style: CustomTextStyles.headlineSmallBlack900Medium), SizedBox(height: 20.v), CustomTextFormField(controller: controller.editTextController, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL201), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSubmit())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_add_gift_card".tr, margin: EdgeInsets.only(top: 58.v, bottom: 11.v)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildSubmit() { return CustomElevatedButton(text: "lbl_submit".tr, margin: EdgeInsets.only(left: 24.h, right: 23.h, bottom: 34.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
