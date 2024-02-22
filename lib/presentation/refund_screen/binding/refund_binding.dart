import '../controller/refund_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RefundScreen.
///
/// This class ensures that the RefundController is created when the
/// RefundScreen is first loaded.
class RefundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundController());
  }
}
