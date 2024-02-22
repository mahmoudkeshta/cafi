import '../controller/get_help_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GetHelpScreen.
///
/// This class ensures that the GetHelpController is created when the
/// GetHelpScreen is first loaded.
class GetHelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetHelpController());
  }
}
