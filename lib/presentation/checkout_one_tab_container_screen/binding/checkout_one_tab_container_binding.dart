import '../controller/checkout_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckoutOneTabContainerScreen.
///
/// This class ensures that the CheckoutOneTabContainerController is created when the
/// CheckoutOneTabContainerScreen is first loaded.
class CheckoutOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutOneTabContainerController());
  }
}
