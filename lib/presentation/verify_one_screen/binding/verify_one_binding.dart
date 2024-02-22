import '../controller/verify_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyOneScreen.
///
/// This class ensures that the VerifyOneController is created when the
/// VerifyOneScreen is first loaded.
class VerifyOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyOneController());
  }
}
