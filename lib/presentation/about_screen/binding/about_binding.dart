import '../controller/about_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AboutScreen.
///
/// This class ensures that the AboutController is created when the
/// AboutScreen is first loaded.
class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutController());
  }
}
