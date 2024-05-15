import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/core/app_export.dart';

import 'package:coffee_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../home_screen/binding/home_binding.dart';
import '../../home_screen/home_screen.dart';


class AuthMethods{
  FirebaseAuth _auth =FirebaseAuth.instance;

  CollectionReference user =FirebaseFirestore.instance.collection("users");
  signup({
    required String email,
    required String password,
    required String username,
    required String dispose,

  }) async{
    try {
      if (email.isNotEmpty||
          password.isNotEmpty||
          username.isNotEmpty ||
          dispose.isNotEmpty ){
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        UserModel userModel=UserModel(
            uId: userCredential.user!.uid,
            username: username,
            email: email,

            phone: "",
            userImg: "",
            userDeviceToken: "",
            country:"",
            userAddress: "",
            street: "",
            isAdmin: false,
            isActive: true,
            createdOn: "",
            city: "", password: password, isCafe: false, isDelivery: false);
        FirebaseFirestore.instance.collection("users").doc(userCredential.user!.uid).set(userModel.toMap());
      }else{
      }
    } on Exception catch (e) {
      return e.toString();
    }
  }



   signin({
    required String email,
    required String password,

  }) {
     String res="gfd" ;
     try {
        
       if (email.isNotEmpty || password.isNotEmpty) {
         Get.to(HomeScreen(),binding:HomeBinding());
        _auth.signInWithEmailAndPassword(email: email, password: password);
       
          
       }
       else {
           res="Enter all fields";
       }
     } on Exception catch (e) {
       print(e);
     }
     return res;
   }

}