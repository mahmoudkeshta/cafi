import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/categories_screen/models/categories_model.dart';import 'package:flutter/material.dart';/// A controller class for the CategoriesScreen.
///
/// This class manages the state of the CategoriesScreen, including the
/// current categoriesModelObj
class CategoriesController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<CategoriesModel> categoriesModelObj = CategoriesModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
