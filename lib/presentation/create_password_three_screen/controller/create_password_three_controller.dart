import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/create_password_three_screen/models/create_password_three_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePasswordThreeScreen.
///
/// This class manages the state of the CreatePasswordThreeScreen, including the
/// current createPasswordThreeModelObj
class CreatePasswordThreeController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<CreatePasswordThreeModel> createPasswordThreeModelObj = CreatePasswordThreeModel().obs;

@override void onClose() { super.onClose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
