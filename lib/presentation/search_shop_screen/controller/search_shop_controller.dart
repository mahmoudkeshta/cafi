import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/search_shop_screen/models/search_shop_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchShopScreen.
///
/// This class manages the state of the SearchShopScreen, including the
/// current searchShopModelObj
class SearchShopController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchShopModel> searchShopModelObj = SearchShopModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
