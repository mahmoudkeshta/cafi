import '../controller/refund_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RefundSuccessScreen.
///
/// This class ensures that the RefundSuccessController is created when the
/// RefundSuccessScreen is first loaded.
class RefundSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundSuccessController());
  }
}
