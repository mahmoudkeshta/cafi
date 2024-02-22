import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/received_screen/models/received_model.dart';import 'package:flutter/material.dart';/// A controller class for the ReceivedScreen.
///
/// This class manages the state of the ReceivedScreen, including the
/// current receivedModelObj
class ReceivedController extends GetxController {TextEditingController janController = TextEditingController();

Rx<ReceivedModel> receivedModelObj = ReceivedModel().obs;

@override void onClose() { super.onClose(); janController.dispose(); } 
 }
