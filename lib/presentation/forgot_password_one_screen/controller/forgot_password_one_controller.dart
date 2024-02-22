import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/forgot_password_one_screen/models/forgot_password_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ForgotPasswordOneScreen.
///
/// This class manages the state of the ForgotPasswordOneScreen, including the
/// current forgotPasswordOneModelObj
class ForgotPasswordOneController extends GetxController {TextEditingController phoneController = TextEditingController();

Rx<ForgotPasswordOneModel> forgotPasswordOneModelObj = ForgotPasswordOneModel().obs;

@override void onClose() { super.onClose(); phoneController.dispose(); } 
 }
