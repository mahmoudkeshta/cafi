import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/sign_up_action_screen/models/sign_up_action_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpActionScreen.
///
/// This class manages the state of the SignUpActionScreen, including the
/// current signUpActionModelObj
class SignUpActionController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController locationController = TextEditingController();

Rx<SignUpActionModel> signUpActionModelObj = SignUpActionModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); locationController.dispose(); } 
 }
