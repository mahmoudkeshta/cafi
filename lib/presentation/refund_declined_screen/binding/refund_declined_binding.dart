import '../controller/refund_declined_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RefundDeclinedScreen.
///
/// This class ensures that the RefundDeclinedController is created when the
/// RefundDeclinedScreen is first loaded.
class RefundDeclinedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundDeclinedController());
  }
}
