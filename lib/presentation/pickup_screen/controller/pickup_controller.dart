import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/pickup_screen/models/pickup_model.dart';import 'package:flutter/material.dart';/// A controller class for the PickupScreen.
///
/// This class manages the state of the PickupScreen, including the
/// current pickupModelObj
class PickupController extends GetxController {TextEditingController janController = TextEditingController();

Rx<PickupModel> pickupModelObj = PickupModel().obs;

@override void onClose() { super.onClose(); janController.dispose(); } 
 }
