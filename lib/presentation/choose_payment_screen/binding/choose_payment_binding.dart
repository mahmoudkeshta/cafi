import '../controller/choose_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChoosePaymentScreen.
///
/// This class ensures that the ChoosePaymentController is created when the
/// ChoosePaymentScreen is first loaded.
class ChoosePaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoosePaymentController());
  }
}
