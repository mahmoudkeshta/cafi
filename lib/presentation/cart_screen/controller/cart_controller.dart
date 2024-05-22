import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';import 'package:coffee_app/presentation/cart_screen/models/cart_model.dart';
import 'package:coffee_app/presentation/cart_screen/models/firestoreservice.dart';
import 'package:coffee_app/presentation/cart_screen/widgets/userprofile4_item_widget.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';/// A controller class for the CartScreen.
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


abstract class CartController1 extends GetxController {
  void gotoback();
  void goToCart();
  var item = ''.obs;
  var counters = <String, RxInt>{}.obs; // Use a map to store counters for each item

  void gotohome();
  void productName();
  void fullPrice();
  void productImages();
  void UserWidge();
  void gotopro();
  void increment(String itemId);
  void decrement(String itemId);
}

class cart_controller extends CartController1 {
  final box = GetStorage();

  @override
  void gotoback() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  @override
  void goToCart() {
    Get.toNamed(AppRoutes.cartScreen, arguments: item);
  }

  @override
  void gotohome() {
    Get.toNamed(AppRoutes.homeScreen, arguments: item);
  }

  @override
  void productName() {
    // Implement productName functionality
  }

  @override
  void fullPrice() {
    // Implement fullPrice functionality
  }

  @override
  void productImages() {
    // Implement productImages functionality
  }

  @override
  void UserWidge() {
    // Implement UserWidge functionality
  }

  @override
  void gotopro() {
    Get.toNamed(AppRoutes.productScreen, arguments: item);
  }

  void saveItem(dynamic argument) {
    item.value = argument.toString();
  }

 // تعريف الخريطة لتخزين العدد لكل منتج
var productCounters = <String, RxInt>{}.obs;

// تحديث دالتي الزيادة والنقصان لتحديث الخريطة وتخزين التغييرات
@override
void increment(String itemId) {
  if (!productCounters.containsKey(itemId)) {
    productCounters[itemId] = 0.obs;
  }
  productCounters[itemId]!.value++; // زيادة العدد

  // تحديث العدد المخزن في GetStorage
  _updateProductCounters();
}

@override
void decrement(String itemId) {
  if (!productCounters.containsKey(itemId)) {
    productCounters[itemId] = 0.obs;
  }
  productCounters[itemId]!.value--; // نقصان العدد

  // تحديث العدد المخزن في GetStorage
  _updateProductCounters();
}

// دالة لتحديث تخزين العدد للمنتجات في GetStorage
void _updateProductCounters() {
  Map<String, int> countersToStore = {};
  productCounters.forEach((key, rxValue) {
    countersToStore[key] = rxValue.value;
  });
  box.write('productCounters', countersToStore);
}

// دالة لاسترجاع العدد لمنتج محدد من الخريطة
RxInt getProductCounter(String itemId) {
  if (!productCounters.containsKey(itemId)) {
    productCounters[itemId] = 0.obs;
  }
  return productCounters[itemId]!;
}

// دالة التهيئة الأولية للتطبيق
@override
void onInit() {
  super.onInit();

  // استرجاع العدد المخزن للمنتجات
  Map<String, dynamic> storedProductCounters = box.read('productCounters') ?? {};
  storedProductCounters.forEach((key, value) {
    if (value is int) {
      productCounters[key] = RxInt(value);
    }
  });
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
      final itemData4 = ''.obs;
      final itemData5 = ''.obs;
      final itemData6 = DateTime.now();
 final ture = ''.obs;
        final GetStorage box = GetStorage();


  @override
  void onInit() {
    super.onInit();
    loadItemData4();
    loadItemData5();
  }

  void loadItemData4() {
    String? savedValue = box.read('itemData4');
    if (savedValue != null) {
      itemData4.value = savedValue;
    }
  }

  void saveItemData4(String value) {
    box.write('itemData4', value);
  }

  void loadItemData5() {
    String? savedValue = box.read('itemData5');
    if (savedValue != null) {
      itemData5.value = savedValue;
    }
  }

  void saveItemData5(String value) {
    box.write('itemData5', value);
  }
   

     void loadItemData6() {
    String? savedValue = box.read('itemData6');
    if (savedValue != null) {
      itemData5.value = savedValue;
    }
  }

  void saveItemData6(String value) {
    box.write('itemData6', value);
  }
}
