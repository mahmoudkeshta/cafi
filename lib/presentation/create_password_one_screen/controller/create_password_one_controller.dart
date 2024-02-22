import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/create_password_one_screen/models/create_password_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePasswordOneScreen.
///
/// This class manages the state of the CreatePasswordOneScreen, including the
/// current createPasswordOneModelObj
class CreatePasswordOneController extends GetxController {TextEditingController eyeController = TextEditingController();

TextEditingController eyeController1 = TextEditingController();

Rx<CreatePasswordOneModel> createPasswordOneModelObj = CreatePasswordOneModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); eyeController.dispose(); eyeController1.dispose(); } 
 }
