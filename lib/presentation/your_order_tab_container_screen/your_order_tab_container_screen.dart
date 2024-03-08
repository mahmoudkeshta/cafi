import 'package:coffee_app/presentation/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cafe_following_page/cafe_following_page.dart';
import 'package:coffee_app/presentation/your_order_page/your_order_page.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_bottom_bar.dart';
import 'controller/your_order_tab_container_controller.dart';

class YourOrderTabContainerScreen
    extends GetWidget<YourOrderTabContainerController> {
  const YourOrderTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     home_ControllerIme home_cont = Get.put(home_ControllerIme());
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  _buildTabview(),
                  Expanded(
                      child: SizedBox(
                          height: 672.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                YourOrderPage(),
                                YourOrderPage(),
                                YourOrderPage()
                              ])))
                ])),
            bottomNavigationBar: _buildBottomBar()));
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
            text: "lbl_my_orders".tr,
            margin: EdgeInsets.only(top: 62.v, bottom: 7.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 50.v,
        width: 415.h,
        child: TabBar(
            controller: controller.tabviewController,
            isScrollable: true,
            labelColor: theme.colorScheme.onPrimary.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 20.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: theme.colorScheme.primary,
            unselectedLabelStyle: TextStyle(
                fontSize: 20.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(25.h)),
            tabs: [
              Tab(child: Text("lbl_on_delivery".tr)),
              Tab(child: Text("lbl_process".tr)),
              Tab(child: Text("lbl_success".tr))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
      switch (type) {
      case BottomBarEnum.Home:
        return home_ControllerIme().gotohome();
      case BottomBarEnum.Orders:
        return "/";
      case BottomBarEnum.Chat:
        return home_ControllerIme().goToChat();
      case BottomBarEnum.Cart:
        return home_ControllerIme().goToCart();
      case BottomBarEnum.Profile:
        return  home_ControllerIme().goToProfile();
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cafeFollowingPage:
        return CafeFollowingPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
