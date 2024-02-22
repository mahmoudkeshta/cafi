import '../controller/cooking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CookingScreen.
///
/// This class ensures that the CookingController is created when the
/// CookingScreen is first loaded.
class CookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CookingController());
  }
}
