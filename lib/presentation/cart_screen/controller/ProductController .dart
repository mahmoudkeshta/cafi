import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cart_screen/controller/firestore_db.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController {
  // Add a list of Product objects.
  final products = <CartItem>[].obs;

  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}