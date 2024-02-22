import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/search_shop_filter_screen/models/search_shop_filter_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchShopFilterScreen.
///
/// This class manages the state of the SearchShopFilterScreen, including the
/// current searchShopFilterModelObj
class SearchShopFilterController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchShopFilterModel> searchShopFilterModelObj = SearchShopFilterModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
