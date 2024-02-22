import '../controller/sign_in_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInActionScreen.
///
/// This class ensures that the SignInActionController is created when the
/// SignInActionScreen is first loaded.
class SignInActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInActionController());
  }
}
