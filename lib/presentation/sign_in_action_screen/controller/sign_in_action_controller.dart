import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/sign_in_action_screen/models/sign_in_action_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInActionScreen.
///
/// This class manages the state of the SignInActionScreen, including the
/// current signInActionModelObj
class SignInActionController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInActionModel> signInActionModelObj = SignInActionModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMeSection = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
