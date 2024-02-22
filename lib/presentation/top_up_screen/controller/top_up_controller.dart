import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/top_up_screen/models/top_up_model.dart';import 'package:flutter/material.dart';/// A controller class for the TopUpScreen.
///
/// This class manages the state of the TopUpScreen, including the
/// current topUpModelObj
class TopUpController extends GetxController {TextEditingController amountController = TextEditingController();

Rx<TopUpModel> topUpModelObj = TopUpModel().obs;

Rx<String> selectPayment = "".obs;

@override void onClose() { super.onClose(); amountController.dispose(); } 
 }
