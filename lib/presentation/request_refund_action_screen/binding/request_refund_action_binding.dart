import '../controller/request_refund_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RequestRefundActionScreen.
///
/// This class ensures that the RequestRefundActionController is created when the
/// RequestRefundActionScreen is first loaded.
class RequestRefundActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestRefundActionController());
  }
}
