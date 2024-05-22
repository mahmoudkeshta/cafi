 import 'package:get_storage/get_storage.dart';

import '../../../core/app_export.dart';import 'userprofile4_item_model.dart';/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {Rx<List<Userprofile4ItemModel>> userprofile4ItemList = Rx([Userprofile4ItemModel(image:ImageConstant.imgImage2080x77.obs,title: "Mocha Frappe".obs,price: "3.50".obs,quantity: "1".obs)]);



 }
 class CartController extends GetxController {
  RxInt counter = 0.obs;
  final box = GetStorage(); // تهيئة GetStorage

  @override
  void onInit() {
    super.onInit();
    // استعادة قيمة العداد عند بدء التطبيق
    counter.value = box.read('counter') ?? 0;
    
    // مراقبة تغيير قيمة العداد وحفظها في التخزين
    ever(counter, (value) {
      box.write('counter', value);
    });
  }

  void increment() {
    counter++;
  }

  void decrement() {
    if (counter > 0) {
      counter--;
    }
  }
}


