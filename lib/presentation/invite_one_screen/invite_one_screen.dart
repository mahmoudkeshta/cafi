import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'controller/invite_one_controller.dart';class InviteOneScreen extends GetWidget<InviteOneController> {const InviteOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(children: [_buildInviteYourFriends(), Spacer(), CustomImageView(imagePath: ImageConstant.imgImage43, height: 128.v, width: 150.h, radius: BorderRadius.circular(75.h)), SizedBox(height: 18.v), Text("msg_share_to_your_friend".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 8.v)])), bottomNavigationBar: _buildShareLink())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_invite".tr, margin: EdgeInsets.only(top: 58.v, bottom: 11.v)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildInviteYourFriends() { return Container(decoration: AppDecoration.fillBlack9002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), shape: RoundedRectangleBorder(side: BorderSide(color: theme.colorScheme.primary, width: 2.h), borderRadius: BorderRadiusStyle.roundedBorder20), child: Container(height: 401.v, width: 380.h, decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgImage32, height: 401.v, width: 380.h, radius: BorderRadius.circular(20.h), alignment: Alignment.center), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 20.h, top: 19.v, right: 41.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_invite_your_friends".tr, style: CustomTextStyles.headlineSmallBlack900_2), SizedBox(height: 11.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 10.adaptSize, width: 10.adaptSize, margin: EdgeInsets.only(top: 7.v, bottom: 33.v), decoration: BoxDecoration(color: appTheme.black900, borderRadius: BorderRadius.circular(5.h))), Expanded(child: Container(width: 298.h, margin: EdgeInsets.only(left: 10.h), child: Text("msg_lorem_ipsum_is_simply4".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge)))]), SizedBox(height: 7.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 10.adaptSize, width: 10.adaptSize, margin: EdgeInsets.only(top: 7.v, bottom: 33.v), decoration: BoxDecoration(color: appTheme.black900, borderRadius: BorderRadius.circular(5.h))), Expanded(child: Container(width: 298.h, margin: EdgeInsets.only(left: 10.h), child: Text("msg_lorem_ipsum_is_simply4".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge)))])])))])))); } 
/// Section Widget
Widget _buildShareLink() { return Padding(padding: EdgeInsets.only(left: 58.h, right: 70.h, bottom: 43.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("lbl_share_link".tr, style: CustomTextStyles.headlineSmallMedium)), Padding(padding: EdgeInsets.only(left: 66.h, top: 2.v), child: Text("lbl_scan_qr".tr, style: CustomTextStyles.headlineSmallBlack900Medium))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
