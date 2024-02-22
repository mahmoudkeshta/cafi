import '../controller/create_password_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatePasswordTwoScreen.
///
/// This class ensures that the CreatePasswordTwoController is created when the
/// CreatePasswordTwoScreen is first loaded.
class CreatePasswordTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePasswordTwoController());
  }
}
