import '../controller/faqs_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaqsScreen.
///
/// This class ensures that the FaqsController is created when the
/// FaqsScreen is first loaded.
class FaqsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqsController());
  }
}
