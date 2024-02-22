import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'controller/policy_and_privacy_controller.dart';class PolicyAndPrivacyScreen extends GetWidget<PolicyAndPrivacyController> {const PolicyAndPrivacyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: 388.h, margin: EdgeInsets.all(20.h), child: Text("msg_this_privacy_policy".tr, maxLines: 18, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleLarge)))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_policy_and_privacy".tr, margin: EdgeInsets.only(top: 61.v, bottom: 8.v)), styleType: Style.bgShadow); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
