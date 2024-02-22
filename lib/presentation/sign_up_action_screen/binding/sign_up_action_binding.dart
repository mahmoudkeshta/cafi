import '../controller/sign_up_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpActionScreen.
///
/// This class ensures that the SignUpActionController is created when the
/// SignUpActionScreen is first loaded.
class SignUpActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpActionController());
  }
}
