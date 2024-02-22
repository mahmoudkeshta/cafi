import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'controller/review_controller.dart';import 'models/review_item_model.dart';import 'widgets/review_item_widget.dart';class ReviewScreen extends GetWidget<ReviewController> {const ReviewScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(children: [_buildReview(), SizedBox(height: 30.v), CustomImageView(imagePath: ImageConstant.imgClosePrimary65x65, height: 65.adaptSize, width: 65.adaptSize), SizedBox(height: 2.v), Text("lbl_loading".tr, style: theme.textTheme.titleMedium), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_review".tr, margin: EdgeInsets.only(top: 58.v, bottom: 11.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgSend, margin: EdgeInsets.fromLTRB(24.h, 67.v, 24.h, 18.v))], styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildReview() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: controller.reviewModelObj.value.reviewItemList.value.length, itemBuilder: (context, index) {ReviewItemModel model = controller.reviewModelObj.value.reviewItemList.value[index]; return ReviewItemWidget(model);})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
