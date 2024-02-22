import '../controller/verify_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyScreen.
///
/// This class ensures that the VerifyController is created when the
/// VerifyScreen is first loaded.
class VerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyController());
  }
}
