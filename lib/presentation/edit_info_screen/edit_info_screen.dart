import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/edit_info_controller.dart';

class EditInfoScreen extends GetWidget<EditInfoController> {
  
  const EditInfoScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
     FirebaseAuth _auth=FirebaseAuth.instance;
    return SafeArea(
      
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
              
                width: double.maxFinite,
                padding: EdgeInsets.all(20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUser40x40,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    margin: EdgeInsets.only(bottom: 38.v)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.h, top: 4.v),
                                    child: Column(children: [
                                      Text("lbl_fullname2".tr,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_1),
                                      SizedBox(height: 5.v),
                                     Text(
                                 //     "lbl_yev_yev".tr,
                               _auth.currentUser!.displayName.toString(),
                                   
                                          style: CustomTextStyles
                                              .headlineSmallBlack900Regular)
                                    ]))
                              ])),
                      SizedBox(height: 19.v),
                      Divider(color: appTheme.black900.withOpacity(0.25)),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgAtSign45x45,
                                height: 40.adaptSize,
                                width: 40.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 4.v, bottom: 5.v),
                                child: Text("lbl_email".tr,
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1))
                          ])),
                      SizedBox(height: 2.v),
                      Align(
                          alignment: Alignment.center,
                          child:
                           Text(
                            //"msg_yevyev_gmail_com".tr,
                            _auth.currentUser!.email.toString(),
                              style: CustomTextStyles
                                  .headlineSmallBlack900Regular)),
                      SizedBox(height: 17.v),
                      Divider(color: appTheme.black900.withOpacity(0.25)),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCallBlack90031x31,
                                    height: 31.adaptSize,
                                    width: 31.adaptSize,
                                    margin: EdgeInsets.only(bottom: 42.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_phone_number".tr,
                                              style: CustomTextStyles
                                                  .titleLargeBlack900_1),
                                          SizedBox(height: 5.v),
                                          Text("msg_855_123_456_789".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBlack900Regular)
                                        ]))
                              ])),
                      SizedBox(height: 19.v),
                      Divider(color: appTheme.black900.withOpacity(0.25)),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMale,
                                    height: 43.adaptSize,
                                    width: 43.adaptSize,
                                    margin: EdgeInsets.only(bottom: 37.v)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 14.h, top: 7.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_gender".tr,
                                              style: CustomTextStyles
                                                  .titleLargeBlack900_1),
                                          SizedBox(height: 5.v),
                                          Text("lbl_male".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBlack900Regular)
                                        ]))
                              ])),
                      SizedBox(height: 20.v),
                      Divider(color: appTheme.black900.withOpacity(0.25)),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgSchedule,
                                    height: 44.adaptSize,
                                    width: 44.adaptSize,
                                    margin: EdgeInsets.only(bottom: 36.v)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 14.h, top: 9.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_birthday".tr,
                                              style: CustomTextStyles
                                                  .titleLargeBlack900_1),
                                          SizedBox(height: 2.v),
                                          Text("lbl_23_10_2001".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBlack900Regular)
                                        ]))
                              ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildUpdate()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
   
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "lbl_my_information".tr,
            margin: EdgeInsets.only(top: 61.v, bottom: 8.v)),
        actions: [
          AppbarSubtitleThree(
              text: "lbl_edit".tr,
              margin: EdgeInsets.fromLTRB(24.h, 62.v, 24.h, 15.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUpdate() {
    return CustomElevatedButton(
        text: "lbl_update".tr,
        margin: EdgeInsets.only(left: 24.h, right: 23.h, bottom: 34.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
