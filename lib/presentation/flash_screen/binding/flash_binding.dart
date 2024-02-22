import '../controller/flash_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlashScreen.
///
/// This class ensures that the FlashController is created when the
/// FlashScreen is first loaded.
class FlashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashController());
  }
}
