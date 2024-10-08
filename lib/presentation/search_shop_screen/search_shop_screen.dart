import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cafe_following_page/cafe_following_page.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_bottom_bar.dart';
import 'controller/search_shop_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'widgets/userprofile2_item_widget.dart';

class SearchShopScreen extends GetWidget<SearchShopController> {
  const SearchShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 2.v),
                            child: Text("lbl_shop".tr,
                                style: CustomTextStyles
                                    .titleLargeBlack900SemiBold)),
                        Container(
                            width: 160.h,
                            margin: EdgeInsets.only(left: 20.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 2.v),
                            decoration: AppDecoration.pink.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                            child: Text("lbl_search_shop".tr,
                                style: CustomTextStyles
                                    .titleLargeOnPrimarySemiBold))
                      ]),
                      SizedBox(height: 16.v),
                      Text("lbl_last_search".tr,
                          style: CustomTextStyles.headlineSmallBlack900_2),
                      SizedBox(height: 10.v),
                      _buildUserProfile()
                    ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 112.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 25.h, top: 66.v, bottom: 24.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitleSearchviewOne(
            margin: EdgeInsets.only(top: 54.v, bottom: 13.v),
            hintText: "lbl_search".tr,
            controller: controller.searchController),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSend,
              margin: EdgeInsets.fromLTRB(24.h, 67.v, 24.h, 22.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.v);
        },
        itemCount: controller
            .searchShopModelObj.value.userprofile2ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile2ItemModel model = controller
              .searchShopModelObj.value.userprofile2ItemList.value[index];
          return Userprofile2ItemWidget(model);
        }));
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
        return AppRoutes.cafeFollowingPage;
      case BottomBarEnum.Orders:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
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
