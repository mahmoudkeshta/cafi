import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/chat_controller.dart';
import '../models/viewhierarchy_item_model.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillBlack9002,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMaximize,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 3.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      "lbl_pinned".tr,
                      style: CustomTextStyles.bodyLargeBlack900_3,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Row(
              children: [
                Container(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder35,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage16,
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    radius: BorderRadius.circular(
                      35.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 3.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_starbuck".tr,
                              style: CustomTextStyles.headlineSmallBlack900_2,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 7.v,
                                bottom: 6.v,
                              ),
                              child: Text(
                                "lbl_10_12am".tr,
                                style: CustomTextStyles.bodyLargeAmberA400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "msg_heyo_check_your".tr,
                          style: CustomTextStyles.bodyLargeBlack900_3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                children: [
                  Container(
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder35,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse20,
                      height: 70.adaptSize,
                      width: 70.adaptSize,
                      radius: BorderRadius.circular(
                        35.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_brown".tr,
                          style: CustomTextStyles.headlineSmallBlack900_2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 19.v,
                              width: 16.h,
                              margin: EdgeInsets.only(bottom: 5.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "lbl_is_typing".tr,
                                style: CustomTextStyles.bodyLargeIndigoA700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 11.v,
                      bottom: 34.v,
                    ),
                    child: Text(
                      "lbl_01_10pm".tr,
                      style: CustomTextStyles.bodyLargeAmberA400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }
}
