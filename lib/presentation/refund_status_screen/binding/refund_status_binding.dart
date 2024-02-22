import '../controller/refund_status_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RefundStatusScreen.
///
/// This class ensures that the RefundStatusController is created when the
/// RefundStatusScreen is first loaded.
class RefundStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundStatusController());
  }
}
