import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/search_filter_screen/models/search_filter_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchFilterScreen.
///
/// This class manages the state of the SearchFilterScreen, including the
/// current searchFilterModelObj
class SearchFilterController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchFilterModel> searchFilterModelObj = SearchFilterModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
