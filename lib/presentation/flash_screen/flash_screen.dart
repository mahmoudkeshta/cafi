import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import '../home_screen/home_screen.dart';
import '../sign_in_screen/binding/sign_in_binding.dart';
import '../sign_in_screen/sign_in_screen.dart';
import '../sign_up_action_screen/sign_up_action_screen.dart';
import 'controller/flash_controller.dart';

// ignore_for_file: must_be_immutable
class FlashScreen extends GetWidget<FlashController> {
  const FlashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
             //  _buildTelevision(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 15.v,
                ),
                child:
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2494x407,
                      height: 494.v,
                      width: 407.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                    SizedBox(height: 43.v),
                    SizedBox(
                      height: 119.v,
                      width: 308.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_working_power".tr,
                              style: CustomTextStyles.displaySmallBold,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: 306.h,
                              child: Text(
                                "msg_lorem_ipsum_is_simply".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      height: 15.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 20,
                          activeDotColor: appTheme.amberA400,
                          dotColor: appTheme.black900.withOpacity(0.1),
                          dotHeight: 15.v,
                          dotWidth: 15.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),

                    CustomElevatedButton(
                      text: "lbl_get_start".tr,
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
                      onPressed: (){
                        Get.offAll(SignInScreen(),binding: SignInBinding());
                      },
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildLineOne(),
      ),
    );
  }

  /// Section Widget
  /**
   *   Widget _buildTelevision() {
    return SizedBox(
      height: 47.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomAppBar(
            height: 47.v,
            leadingWidth: 89.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgTelevision,
              margin: EdgeInsets.only(
                left: 56.h,
                top: 19.v,
                bottom: 15.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgSettings,
                margin: EdgeInsets.only(
                  left: 33.h,
                  top: 18.v,
                  right: 14.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgSettingsOnprimary,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 18.v,
                  right: 14.h,
                ),
              ),
              Container(
                height: 13.v,
                width: 27.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 18.v,
                  right: 14.h,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgInstagram,
                        height: 13.v,
                        width: 27.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 10.v,
                      width: 19.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(1.h, 1.v, 6.h, 1.v),
                    ),
                  ],
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgVectorOnprimary4x1,
                margin: EdgeInsets.fromLTRB(2.h, 22.v, 47.h, 5.v),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBar2,
            height: 47.v,
            width: 428.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
   */
  /// 
  /// 


  /// Section Widget
  Widget _buildLineOne() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 23.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 13.v,
                bottom: 9.v,
              ),
              child: Divider(
                color: appTheme.black900.withOpacity(0.5),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h),

            child: Text(
              "lbl_skip".tr,
              style: CustomTextStyles.bodyLargeBlack900_3,
            ),

          ),
        ],
      ),
    );
  }
}
