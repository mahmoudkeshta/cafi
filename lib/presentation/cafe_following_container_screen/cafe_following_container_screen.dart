import 'package:coffee_app/presentation/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cafe_following_page/cafe_following_page.dart';
import 'package:coffee_app/widgets/custom_bottom_bar.dart';
import 'controller/cafe_following_container_controller.dart';
class CafeFollowingContainerScreen extends GetWidget<CafeFollowingContainerController>
 {const CafeFollowingContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { 
  return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), 
  initialRoute: AppRoutes.cafeFollowingPage, onGenerateRoute: (routeSetting)
   => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), 
   transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { 
  return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { 
   home_ControllerIme home_controllerIme = Get.put(home_ControllerIme());
  switch (type) {
    case BottomBarEnum.Home: return AppRoutes.cafeFollowingPage;
     case BottomBarEnum.Orders: return home_ControllerIme().gotoAdd(); case BottomBarEnum.Chat: return "/";
      case BottomBarEnum.Cart: return "/"; case BottomBarEnum.Profile: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.cafeFollowingPage:
 return CafeFollowingPage(); default: return DefaultWidget();} } 
 }
