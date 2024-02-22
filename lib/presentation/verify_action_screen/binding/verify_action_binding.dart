import '../controller/verify_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyActionScreen.
///
/// This class ensures that the VerifyActionController is created when the
/// VerifyActionScreen is first loaded.
class VerifyActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyActionController());
  }
}
