import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/your_order_tab_container_screen/models/your_order_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the YourOrderTabContainerScreen.
///
/// This class manages the state of the YourOrderTabContainerScreen, including the
/// current yourOrderTabContainerModelObj
class YourOrderTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<YourOrderTabContainerModel> yourOrderTabContainerModelObj = YourOrderTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
