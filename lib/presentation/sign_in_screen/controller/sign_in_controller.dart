import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> rememberMe = false.obs;



  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();
  }
  
}

abstract class LoginController extends GetxController{
Login();
goToSignup();
goTopassword();
goVerify();
goCreatePassword();

}
class LoginControllerImp extends LoginController{
  @override
  Login() {
    // TODO: implement Login
   Get.toEnd(() => AppRoutes.homeScreen);
  }

  @override
  goToSignup() {
    // TODO: implement goToSignup
   Get.toNamed(AppRoutes.signUpScreen);
  }

  @override
  goTopassword() {
    // TODO: implement goTopassword
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  @override
  goCreatePassword() {
    // TODO: implement goCreatePassword
    Get.toNamed(AppRoutes.createPasswordOneScreen);
  }

  @override
  goVerify() {
    // TODO: implement goVerify

    Get.toNamed(AppRoutes.verifyOneScreen);
  }


}
