import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/cafe_following_page/models/cafe_following_model.dart';import 'package:flutter/material.dart';/// A controller class for the CafeFollowingPage.
///
/// This class manages the state of the CafeFollowingPage, including the
/// current cafeFollowingModelObj
class CafeFollowingController extends GetxController {CafeFollowingController(this.cafeFollowingModelObj);

TextEditingController searchController = TextEditingController();

Rx<CafeFollowingModel> cafeFollowingModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
