import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/create_password_screen/models/create_password_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePasswordScreen.
///
/// This class manages the state of the CreatePasswordScreen, including the
/// current createPasswordModelObj
class CreatePasswordController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<CreatePasswordModel> createPasswordModelObj = CreatePasswordModel().obs;

@override void onClose() { super.onClose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
