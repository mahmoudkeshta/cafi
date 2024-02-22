import '../controller/top_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopUpScreen.
///
/// This class ensures that the TopUpController is created when the
/// TopUpScreen is first loaded.
class TopUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopUpController());
  }
}
