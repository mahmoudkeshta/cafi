import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/order_details_screen/models/order_details_model.dart';import 'package:flutter/material.dart';/// A controller class for the OrderDetailsScreen.
///
/// This class manages the state of the OrderDetailsScreen, including the
/// current orderDetailsModelObj
class OrderDetailsController extends GetxController {TextEditingController janController = TextEditingController();

Rx<OrderDetailsModel> orderDetailsModelObj = OrderDetailsModel().obs;

@override void onClose() { super.onClose(); janController.dispose(); } 
 }
