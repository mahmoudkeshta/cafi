import '../controller/let_cook_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LetCookScreen.
///
/// This class ensures that the LetCookController is created when the
/// LetCookScreen is first loaded.
class LetCookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LetCookController());
  }
}
