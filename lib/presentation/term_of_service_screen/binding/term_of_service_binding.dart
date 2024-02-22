import '../controller/term_of_service_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermOfServiceScreen.
///
/// This class ensures that the TermOfServiceController is created when the
/// TermOfServiceScreen is first loaded.
class TermOfServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermOfServiceController());
  }
}
