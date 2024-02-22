import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'controller/about_company_controller.dart';class AboutCompanyScreen extends GetWidget<AboutCompanyController> {const AboutCompanyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: 388.h, margin: EdgeInsets.all(20.h), child: Text("msg_cafi_is_one_of".tr, maxLines: 15, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleLarge)))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_about_company".tr, margin: EdgeInsets.only(top: 62.v, bottom: 7.v)), styleType: Style.bgShadow); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
