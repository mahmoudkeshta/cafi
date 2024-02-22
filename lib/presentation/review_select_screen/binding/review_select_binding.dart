import '../controller/review_select_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewSelectScreen.
///
/// This class ensures that the ReviewSelectController is created when the
/// ReviewSelectScreen is first loaded.
class ReviewSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewSelectController());
  }
}
