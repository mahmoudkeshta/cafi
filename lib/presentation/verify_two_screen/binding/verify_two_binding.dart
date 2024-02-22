import '../controller/verify_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyTwoScreen.
///
/// This class ensures that the VerifyTwoController is created when the
/// VerifyTwoScreen is first loaded.
class VerifyTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyTwoController());
  }
}
