import '../controller/loading_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoadingScreen.
///
/// This class ensures that the LoadingController is created when the
/// LoadingScreen is first loaded.
class LoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingController());
  }
}
