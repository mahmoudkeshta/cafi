import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'package:coffee_app/widgets/custom_checkbox_button.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'package:coffee_app/core/utils/validation_functions.dart';
import 'package:coffee_app/presentation/home_screen/home_screen.dart';
import 'package:coffee_app/presentation/home_screen/binding/home_binding.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'controller/sign_in_controller.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
  SignInScreen({Key? key})
      : super(
          key: key,
        );
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     TextEditingController emailController =TextEditingController();
    TextEditingController passwordController =TextEditingController();
    // ignore: unused_local_variable
    LoginControllerImp controllerImp = Get.put(LoginControllerImp());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(23.h),
                child: Column(
                  children: [
                    SizedBox(height: 94.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 159.adaptSize,
                      width: 159.adaptSize,
                    ),
                    SizedBox(height: 29.v),
                    Text(
                      "lbl_sign_in".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "msg_access_to_your_account".tr,
                      style: CustomTextStyles.titleLargeAmberA400,
                    ),
                    SizedBox(height: 32.v),
                    _buildPhone(),
                    SizedBox(height: 30.v),
                    _buildPassword(),
                    SizedBox(height: 17.v),
                    _buildRememberMe(),
                    SizedBox(height: 20.v),
                    CustomElevatedButton(
                      text: "lbl_sign_in".tr,
                      buttonStyle: CustomButtonStyles.fillPrimaryTL30,
                      onPressed: () async{
                        
   try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: controller.phoneController.text,
    password: controller.passwordController.text,
  );
    Get.offAll(HomeScreen(), binding: HomeBinding());
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
 
    print('No user found for that email.');
       AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Error',
            desc: 'No user found for that email',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            ).show();
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
    AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Error',
            desc: 'Wrong password provided for that user',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            ).show();
  }

}


                     //   Get.offAll(HomeScreen(), binding: HomeBinding());
                      },
                    ),
                    SizedBox(height: 22.v),
                  
                   
                      InkWell(
                        child: Text(
                          "msg_forgot_password".tr,
                          style: CustomTextStyles.titleLargeIndigoA700,
                        ),
                      
                      onTap: () async {
                       await FirebaseAuth.instance.sendPasswordResetEmail(email:controller.passwordController.text );
                       AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Dialog Title',
            desc: 'Dialog description here.............',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            )..show();
                      },
                    ),
                    SizedBox(height: 19.v),
                    _buildLineFour(),
                    SizedBox(height: 17.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup184,
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(2.h),
                           
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: 
                            InkWell(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup183,
                              ),
                               onTap: (){
                              signInWithGoogle();
                            }, 
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup171,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 19.v),
                    GestureDetector(
                      onTap: () {
                        controllerImp.goToSignup();
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_don_t_have_a_account2".tr,
                              style: CustomTextStyles.titleLarge7f000000,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_sign_up".tr,
                              style:
                                  CustomTextStyles.titleLargeff2454f8.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhone() {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAtSign,
          height: 35.adaptSize,
          width: 35.adaptSize,
          color: Colors.black,
          margin: EdgeInsets.only(bottom: 4.v),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 2.v,
            ),
            child: CustomTextFormField(
              controller: controller.phoneController,
              hintText: "lbl_email_or_phone".tr,
             
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return
                   "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSecurityShield,
          height: 45.v,
          width: 35.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 7.v,
            ),
            child:
             CustomTextFormField(
              controller: controller.passwordController,
              hintText: "lbl_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                
                
                }

                return null;
              },
              obscureText: true,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRememberMe() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl_remember_me".tr,
        value: controller.rememberMe.value,
        onChange: (value) {
          controller.rememberMe.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLineFour() {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 15.v,
          ),
          child: SizedBox(
            width: 99.h,
            child: Divider(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 22.h),
          child: 
          
            Text(
              "lbl_or_sign_in_with".tr,
              style: CustomTextStyles.titleLargeBlack900_3,
            ),
                      
         
          ),
        
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 15.v,
          ),
          child: SizedBox(
            width: 121.h,
            child: Divider(
              color: appTheme.black900,
              indent: 28.h,
            ),
          ),
        ),
      ],
    );
  }
}
