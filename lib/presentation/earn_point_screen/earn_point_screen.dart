import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'package:coffee_app/widgets/custom_elevated_button.dart';import 'controller/earn_point_controller.dart';class EarnPointScreen extends GetWidget<EarnPointController> {const EarnPointScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v), child: Column(children: [_buildNewAccountRegister(), SizedBox(height: 17.v), Divider(), SizedBox(height: 16.v), _buildOneHundredFifty1(), SizedBox(height: 17.v), Divider(), SizedBox(height: 16.v), _buildFifty1(), SizedBox(height: 17.v), Divider(), SizedBox(height: 16.v), _buildFifty3(), SizedBox(height: 17.v), Divider(), SizedBox(height: 16.v), _buildFifty5(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_earn_point".tr, margin: EdgeInsets.only(top: 58.v, bottom: 11.v)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildNewAccountRegister() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("msg_new_account_register".tr, style: theme.textTheme.titleLarge)), Container(width: 60.h, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 2.v), decoration: AppDecoration.yellow.copyWith(borderRadius: BorderRadiusStyle.circleBorder7), child: Text("lbl_1004".tr, style: theme.textTheme.titleLarge))])); } 
/// Section Widget
Widget _buildOneHundredFifty() { return CustomElevatedButton(height: 36.v, width: 60.h, text: "lbl_1502".tr, buttonStyle: CustomButtonStyles.fillAmberATL5, buttonTextStyle: theme.textTheme.titleLarge!); } 
/// Section Widget
Widget _buildOneHundredFifty1() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Text("lbl_first_order".tr, style: theme.textTheme.titleLarge)), _buildOneHundredFifty()])); } 
/// Section Widget
Widget _buildFifty() { return CustomElevatedButton(height: 36.v, width: 60.h, text: "lbl_503".tr, buttonStyle: CustomButtonStyles.fillAmberATL5, buttonTextStyle: theme.textTheme.titleLarge!); } 
/// Section Widget
Widget _buildFifty1() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_sharing_app".tr, style: theme.textTheme.titleLarge)), _buildFifty()])); } 
/// Section Widget
Widget _buildFifty2() { return CustomElevatedButton(height: 36.v, width: 60.h, text: "lbl_503".tr, buttonStyle: CustomButtonStyles.fillAmberATL5, buttonTextStyle: theme.textTheme.titleLarge!); } 
/// Section Widget
Widget _buildFifty3() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_rating_order".tr, style: theme.textTheme.titleLarge)), _buildFifty2()])); } 
/// Section Widget
Widget _buildFifty4() { return CustomElevatedButton(height: 36.v, width: 60.h, text: "lbl_503".tr, buttonStyle: CustomButtonStyles.fillAmberATL5, buttonTextStyle: theme.textTheme.titleLarge!); } 
/// Section Widget
Widget _buildFifty5() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_rating_app".tr, style: theme.textTheme.titleLarge)), _buildFifty4()])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
