import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/verify_action_screen/models/verify_action_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerifyActionScreen.
///
/// This class manages the state of the VerifyActionScreen, including the
/// current verifyActionModelObj
class VerifyActionController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerifyActionModel> verifyActionModelObj = VerifyActionModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
