import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'controller/faqs_controller.dart';class FaqsScreen extends GetWidget<FaqsController> {const FaqsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: 383.h, margin: EdgeInsets.fromLTRB(20.h, 20.v, 24.h, 44.v), child: Text("msg_q_how_long_does".tr, maxLines: 25, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleLarge)))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_faqs".tr, margin: EdgeInsets.only(top: 60.v, bottom: 9.v)), styleType: Style.bgShadow); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
