import '../controller/flash_screen_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlashScreenOneScreen.
///
/// This class ensures that the FlashScreenOneController is created when the
/// FlashScreenOneScreen is first loaded.
class FlashScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashScreenOneController());
  }
}
