import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/search_shop_action_filter_tab_container_screen/models/search_shop_action_filter_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchShopActionFilterTabContainerScreen.
///
/// This class manages the state of the SearchShopActionFilterTabContainerScreen, including the
/// current searchShopActionFilterTabContainerModelObj
class SearchShopActionFilterTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController coffeeController = TextEditingController();

Rx<SearchShopActionFilterTabContainerModel> searchShopActionFilterTabContainerModelObj = SearchShopActionFilterTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 5));

@override void onClose() { super.onClose(); coffeeController.dispose(); } 
 }
