import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/add_gift_screen/models/add_gift_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddGiftScreen.
///
/// This class manages the state of the AddGiftScreen, including the
/// current addGiftModelObj
class AddGiftController extends GetxController {TextEditingController editTextController = TextEditingController();

Rx<AddGiftModel> addGiftModelObj = AddGiftModel().obs;

@override void onClose() { super.onClose(); editTextController.dispose(); } 
 }
