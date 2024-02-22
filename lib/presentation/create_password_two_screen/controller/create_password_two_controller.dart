import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/create_password_two_screen/models/create_password_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePasswordTwoScreen.
///
/// This class manages the state of the CreatePasswordTwoScreen, including the
/// current createPasswordTwoModelObj
class CreatePasswordTwoController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

Rx<CreatePasswordTwoModel> createPasswordTwoModelObj = CreatePasswordTwoModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); passwordController1.dispose(); } 
 }
