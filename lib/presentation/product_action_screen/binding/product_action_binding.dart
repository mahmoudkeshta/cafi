import '../controller/product_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductActionScreen.
///
/// This class ensures that the ProductActionController is created when the
/// ProductActionScreen is first loaded.
class ProductActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductActionController());
  }
}
