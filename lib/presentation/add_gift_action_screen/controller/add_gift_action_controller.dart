import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/add_gift_action_screen/models/add_gift_action_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddGiftActionScreen.
///
/// This class manages the state of the AddGiftActionScreen, including the
/// current addGiftActionModelObj
class AddGiftActionController extends GetxController {TextEditingController group369Controller = TextEditingController();

Rx<AddGiftActionModel> addGiftActionModelObj = AddGiftActionModel().obs;

@override void onClose() { super.onClose(); group369Controller.dispose(); } 
 }
