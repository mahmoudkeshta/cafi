import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';import 'package:coffee_app/presentation/cart_screen/models/cart_model.dart';
import 'package:coffee_app/presentation/cart_screen/models/firestoreservice.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';/// A controller class for the CartScreen.
///
/// This class manages the state of the CartScreen, including the
/// current cartModelObj
class CartController extends GetxController {Rx<CartModel> cartModelObj = CartModel().obs;
  var _products={}.obs;
late FirestoreService _firestoreService;
/**
 *   void addProducts(products product){
  if(_products.containsKey(product)){
    _products[product] +=1;
  }else{
    _products[product] =1;
  }
  
  } }
 */



}
  
 
