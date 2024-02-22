import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/verify_screen/models/verify_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerifyScreen.
///
/// This class manages the state of the VerifyScreen, including the
/// current verifyModelObj
class VerifyController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerifyModel> verifyModelObj = VerifyModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
