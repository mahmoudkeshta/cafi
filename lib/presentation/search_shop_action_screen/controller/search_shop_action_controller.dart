import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/search_shop_action_screen/models/search_shop_action_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchShopActionScreen.
///
/// This class manages the state of the SearchShopActionScreen, including the
/// current searchShopActionModelObj
class SearchShopActionController extends GetxController {TextEditingController coffeeController = TextEditingController();

Rx<SearchShopActionModel> searchShopActionModelObj = SearchShopActionModel().obs;

@override void onClose() { super.onClose(); coffeeController.dispose(); } 
 }
