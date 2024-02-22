import '../controller/shop_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShopScreen.
///
/// This class ensures that the ShopController is created when the
/// ShopScreen is first loaded.
class ShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopController());
  }
}
