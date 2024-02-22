import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/change_password_screen/models/change_password_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangePasswordScreen.
///
/// This class manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj
class ChangePasswordController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

TextEditingController newpasswordController1 = TextEditingController();

Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

Rx<bool> isShowPassword2 = true.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); newpasswordController.dispose(); newpasswordController1.dispose(); } 
 }
