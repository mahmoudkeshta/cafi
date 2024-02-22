import '../controller/choose_payment_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChoosePaymentActionScreen.
///
/// This class ensures that the ChoosePaymentActionController is created when the
/// ChoosePaymentActionScreen is first loaded.
class ChoosePaymentActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoosePaymentActionController());
  }
}
