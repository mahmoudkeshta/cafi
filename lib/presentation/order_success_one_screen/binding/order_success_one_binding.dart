import '../controller/order_success_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderSuccessOneScreen.
///
/// This class ensures that the OrderSuccessOneController is created when the
/// OrderSuccessOneScreen is first loaded.
class OrderSuccessOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderSuccessOneController());
  }
}
