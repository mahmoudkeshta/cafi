import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'package:coffee_app/widgets/custom_outlined_button.dart';import 'controller/review_select_controller.dart';import 'models/reviewselect_item_model.dart';import 'widgets/reviewselect_item_widget.dart';class ReviewSelectScreen extends GetWidget<ReviewSelectController> {const ReviewSelectScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), _buildReviewSelect()])), bottomNavigationBar: _buildCancel())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_review".tr, margin: EdgeInsets.only(top: 58.v, bottom: 11.v)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildReviewSelect() { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: controller.reviewSelectModelObj.value.reviewselectItemList.value.length, itemBuilder: (context, index) {ReviewselectItemModel model = controller.reviewSelectModelObj.value.reviewselectItemList.value[index]; return ReviewselectItemWidget(model);})))); } 
/// Section Widget
Widget _buildCancel() { return CustomOutlinedButton(text: "lbl_cancel".tr, margin: EdgeInsets.only(left: 24.h, right: 23.h, bottom: 34.v), buttonStyle: CustomButtonStyles.outlinePrimaryTL302, buttonTextStyle: CustomTextStyles.headlineSmallPrimary_1); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
