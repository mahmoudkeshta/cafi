import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cart_one_page/cart_one_page.dart';
import 'package:coffee_app/presentation/checkout_one_page/checkout_one_page.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'controller/checkout_one_tab_container_controller.dart';

class CheckoutOneTabContainerScreen
    extends GetWidget<CheckoutOneTabContainerController> {
  const CheckoutOneTabContainerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  _buildTabview(),
                  SizedBox(
                      height: 738.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [CheckoutOnePage(), CartOnePage()]))
                ]))));
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
            text: "lbl_checkout".tr,
            margin: EdgeInsets.only(top: 58.v, bottom: 11.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 60.v,
        width: 380.h,
        decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(10.h),
            border: Border.all(color: theme.colorScheme.primary, width: 1.h)),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.black900,
            labelStyle: TextStyle(
                fontSize: 20.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: theme.colorScheme.onPrimary.withOpacity(1),
            unselectedLabelStyle: TextStyle(
                fontSize: 20.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
            indicator: BoxDecoration(
                color: theme.colorScheme.onPrimary.withOpacity(1),
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(10.h)),
                border:
                    Border.all(color: theme.colorScheme.primary, width: 1.h)),
            tabs: [
              Tab(child: Text("lbl_pickup".tr)),
              Tab(child: Text("lbl_delivery".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
