import '../controller/top_up_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopUpActionScreen.
///
/// This class ensures that the TopUpActionController is created when the
/// TopUpActionScreen is first loaded.
class TopUpActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopUpActionController());
  }
}
