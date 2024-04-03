import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';import 'package:coffee_app/presentation/cart_screen/models/cart_model.dart';
import 'package:coffee_app/presentation/cart_screen/models/firestoreservice.dart';
import 'package:coffee_app/presentation/cart_screen/widgets/userprofile4_item_widget.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';/// A controller class for the CartScreen.
///
/// This class manages the state of the CartScreen, including the
/// current cartModelObj
class CartController extends GetxController 
{
 // Rx<CartModel> cartModelObj = CartModel().obs;
  //var _products={}.obs;
//late FirestoreService _firestoreService;

/**
 *   void addProducts(products product){
  if(_products.containsKey(product)){
    _products[product] +=1;
  }else{
    _products[product] =1;
  }
  
  } }
 */

var _products = {}.obs;

  void addProduct(CartItem product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
      "Product Added",
      "You have added the ${product.productName} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }

  void removeProduct(CartItem product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}



abstract class CartController1 extends GetxController{
  
gotoback();
goToCart();
 //final item = Get.arguments;
   var item = ''.obs;
   RxInt m = 0.obs;
  RxInt counter=0.obs;

 gotohome();
 productName();
 fullPrice();
 productImages();
 UserWidge();
 gotopro();
 increment();
 decrement();


 

} 

  class cart_controller extends CartController1{
    
  @override
  gotoback() {
    Get.toNamed(AppRoutes.homeScreen);
  }
  
  @override
  goToCart() {
       Get.toNamed(AppRoutes.cartScreen,arguments: item);
  
  }
  
  @override
  gotohome() {
 Get.toNamed(AppRoutes.homeScreen,arguments: item);
  }
  
  @override
  productName() {
    // item['productName'];
  }
  
  @override
  fullPrice() {
 // item ['fullPrice'];
  }
  
  @override
  productImages() {
 //item['productImages'];
  }
  
  @override
  UserWidge() {
    

  }
  
  @override
  gotopro() {
 Get.toNamed(AppRoutes.productScreen, arguments: item);
 
  }
 void saveItem(dynamic argument) {
    item.value = argument.toString();
  }
  
  @override
  decrement() {
    
   counter++;
  
  }
  
  @override
  increment() {
    
   counter--;


  }

  

  }
 
class CartController2 extends GetxController {
  var item = ''.obs;

  void saveItem(dynamic argument) {
    item.value = argument.toString();
  }
}

class CartController5 extends GetxController {
  // حالة مستمرة لتخزين البيانات
   final itemData = ''.obs;
   final itemData1 = ''.obs;
   final itemData2 = ''.obs;
   final ture=''.obs;
   
}
