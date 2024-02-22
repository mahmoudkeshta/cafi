import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/refund_declined_controller.dart';

// ignore_for_file: must_be_immutable
class RefundDeclinedScreen extends GetWidget<RefundDeclinedController> {
  const RefundDeclinedScreen({Key? key})
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 79.v),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 5.h,
                  ),
                  borderRadius: BorderRadiusStyle.circleBorder74,
                ),
                child: Container(
                  height: 148.adaptSize,
                  width: 148.adaptSize,
                  padding: EdgeInsets.all(30.h),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder74,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          child: Divider(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          child: Divider(
                            color: theme.colorScheme.primary,
                            endIndent: 1.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Opacity(
                opacity: 0.75,
                child: SizedBox(
                  width: 217.h,
                  child: Text(
                    "msg_your_refund_is_declined".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_you_aren_t_follw".tr,
                style: CustomTextStyles.titleLargeBlack900_1,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBackHome(),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackHome() {
    return CustomElevatedButton(
      text: "lbl_back_home".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 23.h,
        bottom: 34.v,
      ),
    );
  }
}
