import '../controller/change_password_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangePasswordTwoScreen.
///
/// This class ensures that the ChangePasswordTwoController is created when the
/// ChangePasswordTwoScreen is first loaded.
class ChangePasswordTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordTwoController());
  }
}
