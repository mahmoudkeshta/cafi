import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/cooking_controller.dart';

class CookingScreen extends GetWidget<CookingController> {
  const CookingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 11.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage52,
                          height: 170.v,
                          width: 168.h),
                      SizedBox(height: 33.v),
                      Text("lbl_cooking".tr,
                          style: CustomTextStyles.displaySmallPrimary),
                      SizedBox(height: 26.v),
                      CustomElevatedButton(
                          height: 100.v,
                          text: "lbl_10_minutes".tr,
                           
                          margin: EdgeInsets.symmetric(horizontal: 64.h),
                          buttonStyle: CustomButtonStyles.fillAmberATL50,
                          buttonTextStyle: theme.textTheme.displaySmall!),
                      SizedBox(height: 21.v),
                      Text("msg_please_wait_this".tr,
                          style: theme.textTheme.bodyLarge)
                    ])),
            bottomNavigationBar: _buildTwentyThree()));
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
            text: "lbl_cooking".tr,
            
            margin: EdgeInsets.only(top: 61.v, bottom: 8.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTwentyThree() {
    return Container(
        margin: EdgeInsets.only(left: 54.h, right: 43.h, bottom: 59.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Container(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 8.v),
                        decoration: AppDecoration.pink.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder40),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgChat,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            alignment: Alignment.center)),
                    Padding(
                        padding: EdgeInsets.only(left: 30.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_live_chat".tr,
                              
                                  style: CustomTextStyles.titleLargeSemiBold),
                                  
                              Padding(
                                  padding: EdgeInsets.only(top: 12.v),
                                  child: 
                                  GestureDetector(
                                    child: Text("msg_we_are_ready_to".tr,
                                        style: theme.textTheme.bodyLarge),
                                       
                                  ),
                                  
                                  )
                            ]))
                  ])),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 25.v,
                  width: 12.h,
                  margin: EdgeInsets.only(left: 44.h, top: 19.v, bottom: 22.v),
                  )
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
