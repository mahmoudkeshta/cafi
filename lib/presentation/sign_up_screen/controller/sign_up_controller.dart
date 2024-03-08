import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/home_screen/home_screen.dart';
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
  TextEditingController   passwordRowController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;
  @override
  void onClose() {
    super.onClose();
    fullNameRowController.dispose();
    phoneRowController.dispose();
    addressRowController.dispose();
  }

  static signUpMethod(String name, String email, String password, String userDeviceToken) {}
}

abstract class SignUp_Controller extends GetxController{
 gotohelp();
 gotohome();

}
class SignUp_ControllerImg extends SignUp_Controller{
  @override
  gotohelp() {
    // TODO: implement gotohelp
   Get.toNamed(AppRoutes.getHelpScreen);
  }
  
  @override
  gotohome() {
    // TODO: implement gotohome
      Get.offAll(() => HomeScreen());
  }


}

