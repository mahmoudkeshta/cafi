import '../controller/cooking_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CookingOneScreen.
///
/// This class ensures that the CookingOneController is created when the
/// CookingOneScreen is first loaded.
class CookingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CookingOneController());
  }
}
