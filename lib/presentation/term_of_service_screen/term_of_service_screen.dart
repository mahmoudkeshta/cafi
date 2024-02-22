import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'controller/term_of_service_controller.dart';class TermOfServiceScreen extends GetWidget<TermOfServiceController> {const TermOfServiceScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: 357.h, margin: EdgeInsets.fromLTRB(20.h, 21.v, 50.h, 21.v), child: Text("msg_overview_this".tr, maxLines: 11, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleLarge)))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_term_of_service".tr, margin: EdgeInsets.only(top: 58.v, bottom: 11.v)), styleType: Style.bgShadow); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
