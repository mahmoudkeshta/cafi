import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/top_up_action_screen/models/top_up_action_model.dart';import 'package:flutter/material.dart';/// A controller class for the TopUpActionScreen.
///
/// This class manages the state of the TopUpActionScreen, including the
/// current topUpActionModelObj
class TopUpActionController extends GetxController {TextEditingController uSDController = TextEditingController();

Rx<TopUpActionModel> topUpActionModelObj = TopUpActionModel().obs;

Rx<String> selectPayment = "".obs;

@override void onClose() { super.onClose(); uSDController.dispose(); } 
 }
