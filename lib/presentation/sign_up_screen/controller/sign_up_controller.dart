import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController fullNameRowController = TextEditingController();
  TextEditingController phoneRowController = TextEditingController();
  TextEditingController addressRowController = TextEditingController();
  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;
  @override
  void onClose() {
    super.onClose();
    fullNameRowController.dispose();
    phoneRowController.dispose();
    addressRowController.dispose();
  }
}

abstract class SignUp_Controller extends GetxController{
 gotohelp();

}
class SignUp_ControllerImg extends SignUp_Controller{
  @override
  gotohelp() {
    // TODO: implement gotohelp
   Get.toNamed(AppRoutes.getHelpScreen);
  }


}