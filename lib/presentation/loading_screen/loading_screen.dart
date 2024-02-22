import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'controller/loading_controller.dart';

// ignore_for_file: must_be_immutable
class LoadingScreen extends GetWidget<LoadingController> {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 272.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 159.adaptSize,
                width: 159.adaptSize,
              ),
              SizedBox(height: 52.v),
              Text(
                "lbl_cafi".tr,
                style: CustomTextStyles.displaySmallBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
