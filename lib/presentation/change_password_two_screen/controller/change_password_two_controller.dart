import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/change_password_two_screen/models/change_password_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangePasswordTwoScreen.
///
/// This class manages the state of the ChangePasswordTwoScreen, including the
/// current changePasswordTwoModelObj
class ChangePasswordTwoController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

Rx<ChangePasswordTwoModel> changePasswordTwoModelObj = ChangePasswordTwoModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

Rx<bool> isShowPassword2 = true.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); newpasswordController.dispose(); passwordController1.dispose(); } 
 }
