import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/checkout_one_tab_container_screen/models/checkout_one_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the CheckoutOneTabContainerScreen.
///
/// This class manages the state of the CheckoutOneTabContainerScreen, including the
/// current checkoutOneTabContainerModelObj
class CheckoutOneTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<CheckoutOneTabContainerModel> checkoutOneTabContainerModelObj = CheckoutOneTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
