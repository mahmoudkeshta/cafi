import '../controller/flash_screen_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlashScreenTwoScreen.
///
/// This class ensures that the FlashScreenTwoController is created when the
/// FlashScreenTwoScreen is first loaded.
class FlashScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashScreenTwoController());
  }
}
