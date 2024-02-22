import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import '../flash_screen_one_screen/flash_screen_one_screen.dart';
import 'controller/flash_screen_two_controller.dart';

// ignore_for_file: must_be_immutable
class FlashScreenTwoScreen extends GetWidget<FlashScreenTwoController> {
  const FlashScreenTwoScreen({Key? key})
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
              _buildFlashScreenTwoStack(),
              SizedBox(height: 15.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 494.v,
                width: 407.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              SizedBox(height: 38.v),
              Text(
                "lbl_best_coffee".tr,
                style: CustomTextStyles.displaySmallBold,
              ),
              SizedBox(height: 2.v),
              Container(
                width: 306.h,
                margin: EdgeInsets.only(
                  left: 57.h,
                  right: 64.h,
                ),
                child: Text(
                  "msg_lorem_ipsum_is_simply".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge,
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
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "lbl_next".tr,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                onPressed: (){
                  Get.off(FlashScreenOneScreen());
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextRow(),
      ),
    );
  }

  /// Section Widget
  Widget _buildFlashScreenTwoStack() {
    return SizedBox(
      height: 47.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(56.h, 18.v, 32.h, 14.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorOnprimary,
                    height: 13.v,
                    width: 33.h,
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorOnprimary13x23,
                    height: 13.v,
                    width: 23.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorOnprimary14x19,
                    height: 14.v,
                    width: 19.h,
                    margin: EdgeInsets.only(left: 7.h),
                  ),
                  Container(
                    height: 13.v,
                    width: 27.h,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVectorOnprimary13x27,
                            height: 13.v,
                            width: 27.h,
                            alignment: Alignment.center,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorOnprimary10x19,
                          height: 10.v,
                          width: 19.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorOnprimary4x1,
                      height: 4.v,
                      width: 1.h,
                      margin: EdgeInsets.only(
                        left: 1.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBar1,
            height: 47.v,
            width: 428.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNextRow() {
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
