import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/verify_two_screen/models/verify_two_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerifyTwoScreen.
///
/// This class manages the state of the VerifyTwoScreen, including the
/// current verifyTwoModelObj
class VerifyTwoController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerifyTwoModel> verifyTwoModelObj = VerifyTwoModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
