import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Loading".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Flash Screen Two".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Flash Screen One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Flash Screen".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign in".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign in - Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up - Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verify Two".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verify - Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Password".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Password Two".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Success".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verify".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verify One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Password Three".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Password One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Get Help".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Live Chat".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Active Chat".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Call".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Shop".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Categories".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Filter".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Items".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Items Filter".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Shop".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Shop Filter".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Shop Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Search Shop Action Filter - Tab Container".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product​ Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout One - Tab Container".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Let cook".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cooking".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Waiting".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pickup".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Success".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Review Select".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Write Review One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Write Review".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Review".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Success One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cooking One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tracking Orders".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Received".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Success Two".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Your Order - Tab Container".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Details".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Invioce".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Refund".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Request Refund".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Request Refund Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose Payment".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose Payment Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Refund status".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Refund Success".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Refund Declined".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Wishlist".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Balance".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Top Up".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Top Up Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Balance Added".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reward".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Invite".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Claim".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reward History".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Earn Point".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Invite One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gift Card".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Gift".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Gift Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Buy Gift Card".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Buy Gift Card Action".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gift Card Code".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Info".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Address".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cafe Following - Container".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Setting".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Password One".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Password Two".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Password".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "About".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Policy and Privacy".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "Term of Service".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "About Company".tr,
                        ),
                        _buildScreenTitle(
                          screenTitle: "FAQs".tr,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({required String screenTitle}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF888888),
          ),
        ],
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
