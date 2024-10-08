import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:coffee_app/presentation/cafe_following_container_screen/cafe_following_container_screen.dart';
import 'package:coffee_app/presentation/cart_screen/controller/cart_controller.dart';
import 'package:coffee_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:coffee_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:coffee_app/presentation/order_success_screen/models/order.dart';
import 'package:coffee_app/presentation/sign_in_screen/controller/getuserdatacontroller.dart';
import 'package:coffee_app/presentation/sign_up_screen/services/auth.dart';
import 'package:coffee_app/presentation/verify_screen/binding/verify_binding.dart';
import 'package:coffee_app/presentation/verify_screen/verify_screen.dart';
import 'package:crypto/crypto.dart';
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
import 'package:local_auth/local_auth.dart';

import 'controller/sign_in_controller.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
   final localAuth = LocalAuthentication();
    bool didAuthenticate = false;

  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
final CartController5 cartController5 = Get.put<CartController5>(CartController5(), permanent: true);


  String encryptPassword(  String  password) {
  var bytes = utf8.encode(password);
   // تحويل كلمة المرور إلى بايتات.
    
  var digest = sha256.convert(bytes);
   // تجزئة البايتات إلى SHA-256.
   //  cartController5.itemData2.value=digest.toString(); 
  return digest.toString(); 
  
  // إرجاع القيمة المشفرة كنص.
}
 
      int wrongPasswordAttempts = 0; // متغير لتتبع عدد محاولات كلمة المرور الخاطئة
final int maxAttempts = 3;

  /*
  * signin() async {
    try {
      String res = await AuthMethods().signin(
          email: controller.phoneController.text,
          password: controller.passwordController.text);
      if (res == "success"){
        print("done");
      }else {
        print(res);
      };
    } on Exception catch (e) {
      print(e);
    }
  }*/
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
    FirebaseAuth _auth=FirebaseAuth.instance;
      final GetUserDataController getUserDataController =
      Get.put(GetUserDataController());
 
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
                    SizedBox(height: 40.v),
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
                      
           onPressed: ()


           
       /**
        *        async {
               try {
               String res = await AuthMethods().signin(
               email: controller.phoneController.text,
               password: controller.passwordController.text);
               if (res == "User is signed in"){
               print("ok");
               Get.offAll(HomeScreen(), binding: HomeBinding());
               }else {
               print(res);
               };
               } on Exception catch (e) {
               print(e);
               }
               },
        */



                      async{
             
final encryptedPassword = encryptPassword(controller.passwordController.text);
cartController5.itemData4.value=encryptedPassword;
cartController5.itemData5.value=controller.phoneController.text;

  try {
 // عدد محاولات كلمة المرور الخاطئة القصوى قبل حظر المستخدم
    
   final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: controller.phoneController.text,
    password: encryptedPassword,//controller.passwordController.text,
  );

  
  


  // استرجاع بيانات المستخدم بنجاح
  var userData = await getUserDataController.getUserData(credential!.user!.uid);

  // التأكد من وجود البيانات والتحقق مما إذا كان المستخدم مسؤولًا أم لا
  if (userData.isNotEmpty && userData[0]['isAdmin'] == true && FirebaseAuth.instance.currentUser!.emailVerified  ) {
    // المستخدم مسؤول، يمكن تنفيذ الإجراءات المناسبة هنا
   // Get.offAll(AdminMainScreen(), binding: AdminMainBinding());
    String v= _auth.currentUser!.email.toString();
    String c=cartController5.itemData2.value.toString();
    print(cartController5.itemData2.value);
    
    
    AwesomeDialog (
            context: context,
           dialogType: DialogType.success,
            animType: AnimType.bottomSlide,
          
            title: 'Success',
            desc: 'Admin: $v logged in successfully.............',
            btnCancelOnPress: () {},
            btnOkOnPress: () {Get.offAll(CafeFollowingContainerScreen(),arguments:userData );
            
                Get.snackbar(
      
      "Success",
      "Admin: $v logged in successfully" ,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Color.fromARGB(233, 254, 254, 255),
    );
            },
            btnOkIcon: Icons.cancel,
            
            )..show();
}  else if  (userData.isNotEmpty && userData[0]['isCafe'] == true && FirebaseAuth.instance.currentUser!.emailVerified ){
    String v= _auth.currentUser!.email.toString();
     Get.snackbar(
      "Success",
      "Cafe: $v logged in successfully",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Color.fromARGB(233, 254, 254, 255),
    );
  }
   else if  (userData.isNotEmpty && userData[0]['isDelivery'] == true && FirebaseAuth.instance.currentUser!.emailVerified){
      String v= _auth.currentUser!.email.toString();
       Get.snackbar(
      "Success",
      "Delivery: $v logged in successfully",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Color.fromARGB(233, 254, 254, 255),
    );
  }
  
   else if( userData.isNotEmpty && FirebaseAuth.instance.currentUser!.emailVerified) {
       String v= _auth.currentUser!.email.toString();
    // المستخدم ليس مسؤولا، قم بتسجيل الدخول إلى الواجهة الرئيسية للمستخدم العادي
    Get.offAll(HomeScreen(), binding: HomeBinding());
      String c=cartController5.itemData4.value.toString();
     wrongPasswordAttempts = 0;
    Get.snackbar(
      "Success",
      "User: $v logged in successfully",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Color.fromARGB(233, 254, 254, 255),
      
    );
  }
} on FirebaseAuthException catch (e) {

             wrongPasswordAttempts++;

                Get.snackbar(
      
      "Ererr",
      " $e " ,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Color.fromARGB(233, 254, 254, 255),
    );
   
      if (wrongPasswordAttempts >= maxAttempts) {
      // قم بتنفيذ الإجراءات المناسبة لمنع المستخدم، مثل إظهار رسالة خطأ أو منعه من المحاولة لفترة معينة
      // يمكنك تنفيذ الإجراءات الخاصة بك هنا

                Get.snackbar(
      
      "Ererr",
      " Limit of logins allowed" ,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Color.fromARGB(233, 254, 254, 255),
    );
    Get.offAllNamed(AppRoutes.refundDeclinedScreen);
    }

  if (e.code == 'user-not-found') {
     AwesomeDialog(
            context: context,
           dialogType: DialogType.error,
            animType: AnimType.bottomSlide,
            title: 'Error',
            desc: 'user-not-found.............',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            )..show();
    // يتم إظهار رسالة خطأ إذا لم يتم العثور على المستخدم
    // يمكنك إظهار رسالة خطأ لكل حالة ممكنة من حالات FirebaseAuthException
  } else if (e.code == 'wrong-password') {
AwesomeDialog(
            context: context,
           dialogType: DialogType.error,
            animType: AnimType.bottomSlide,
            title: 'Error',
            desc: 'wrong-password............',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            )..show();
    // يتم إظهار رسالة خطأ إذا كانت كلمة المرور غير صحيحة
    // يمكنك إظهار رسالة خطأ لكل حالة ممكنة من حالات FirebaseAuthException
  }
 
}



                     //   Get.offAll(HomeScreen(), binding: HomeBinding());
                      },
                    ),
                    SizedBox(height: 22.v),
                      Center(
          child:
      
       GetBuilder<CartController5>(
        init: CartController5(),
         builder: (controller) {
           return ElevatedButton.icon(
                
             onPressed: () async {
            
                
           
           
               try {
                 
        
             
                 final credential1 = await FirebaseAuth.instance.signInWithEmailAndPassword(
               email: cartController5.itemData5.value.toString(), password: cartController5.itemData4.value.toString(),);
       
     
                 didAuthenticate = await localAuth.authenticate(
            localizedReason: 'Please authenticate to login', // سبب المصادقة
                 );
               } catch (e) {
                 print('Error: $e');
               }
           
               if ( didAuthenticate && didAuthenticate!=Null ) {
                 Get.offAllNamed(AppRoutes.homeScreen);
                 // قم بحفظ بصمة الجهاز هنا
                 print('User authenticated successfully');
               
           
                 Get.snackbar(
            "Success",
            "User: logged in successfully",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Color.fromARGB(233, 254, 254, 255),
                 );
                
               } else {
                 print('User could not be authenticated');
                 // التعامل مع حالة فشل المصادقة
                 Get.snackbar(
            "Ererr",
            " User could not be authenticated" ,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Color.fromARGB(233, 254, 254, 255),
                 );
               }
             },
              icon: Icon(Icons.fingerprint,size: 30,color: Colors.white ),
                
            // أيقونة بصمة الأصبع
             label: Padding(
               padding: const EdgeInsets.only(left: 9.0),
               child: Text(' Fingerprint', style: TextStyle(
            fontSize: 20,color: Colors.white ,// حجم النص بالبكسل
                 ),),
             ),
             
           
             
           );
         }
       ),






        
                      ),
                   SizedBox(height: 22.v),
                   
                      InkWell(
                        child: 
                        Text(
                          "msg_forgot_password".tr,
                          style: CustomTextStyles.titleLargeIndigoA700,
                        ),
                      /**  onTap: (){
                          controllerImp.goForpassword();
                        }, */
                      
                   onTap: () async {
                   
                                  AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Do you want to change your password?',
            desc: "The email you enter will be sent".tr,
            btnCancelOnPress: () {
                Get.snackbar(
                            "تم",
                            "تم ارجاع الي تسجل دخول",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.red,
                            colorText: Color.fromARGB(233, 254, 254, 255),
                          );
            
            },
            
            btnOkOnPress: () async{ await FirebaseAuth.instance.sendPasswordResetEmail(email:controller.phoneController.text );
             Get.snackbar(
                            "تم",
                            "ارسال الايميل تغيير كلمه السر",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.green,
                            colorText: Color.fromARGB(233, 254, 254, 255),
                          );
            
            
            },
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
                    SizedBox(height: 10.v),
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
              textStyle:TextStyle(color: Colors.black),
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
              textStyle:TextStyle(color: Colors.black),
              
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
