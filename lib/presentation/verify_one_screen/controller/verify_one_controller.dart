import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/verify_one_screen/models/verify_one_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerifyOneScreen.
///
/// This class manages the state of the VerifyOneScreen, including the
/// current verifyOneModelObj
class VerifyOneController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerifyOneModel> verifyOneModelObj = VerifyOneModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
