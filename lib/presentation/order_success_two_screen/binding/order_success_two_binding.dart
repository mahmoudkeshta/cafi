import '../controller/order_success_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderSuccessTwoScreen.
///
/// This class ensures that the OrderSuccessTwoController is created when the
/// OrderSuccessTwoScreen is first loaded.
class OrderSuccessTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderSuccessTwoController());
  }
}
