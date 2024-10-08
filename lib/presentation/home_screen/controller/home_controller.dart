import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/home_screen/models/home_model.dart';
import 'package:coffee_app/presentation/order_success_screen/models/order.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;
  Rx<int> sliderIndex = 0.obs;
  
}

 abstract class home_Controller extends GetxController {
  final item;
  home_Controller({ String ? this.item,});
 

  goToshop();
  gOToProduct();
  goToProfile();
  goToChat();
  goToCart();
  goToYourOrder();
  gotohome();
  gotoSearch();
  gotoAdd();

 }
class home_ControllerIme extends home_Controller{
   CollectionReference order = FirebaseFirestore.instance.collection('order');


  @override
  goToshop() {
  
    Get.toNamed(AppRoutes.shopScreen);
  }
  
  @override
  gOToProduct() {
  
     Get.toNamed(AppRoutes.productScreen);

      

  }
  
  @override
  goToProfile() {
   
    Get.toNamed(AppRoutes.profileScreen);
  }

  @override
  goToCart() {
  
    Get.toNamed(AppRoutes.cartScreen,arguments: item);
  }

  @override
  goToChat() {
   
    Get.toNamed(AppRoutes.chatScreen);
  }

  @override
  goToYourOrder() {
   
    Get.toNamed(AppRoutes.yourOrderTabContainerScreen);
  }
  
  @override
  gotohome() {
Get.toNamed(AppRoutes.homeScreen);
  }
  
  @override
  gotoSearch() {
 Get.toNamed(AppRoutes.searchFilterScreen);
  }
  
  @override
  gotoAdd() {
    // TODO: implement gotoAdd
   Get.to(AddProductPage());
  }
  

}

 
