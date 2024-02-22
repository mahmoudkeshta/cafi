import '../controller/request_refund_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RequestRefundScreen.
///
/// This class ensures that the RequestRefundController is created when the
/// RequestRefundScreen is first loaded.
class RequestRefundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestRefundController());
  }
}
