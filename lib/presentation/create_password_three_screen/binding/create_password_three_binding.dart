import '../controller/create_password_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatePasswordThreeScreen.
///
/// This class ensures that the CreatePasswordThreeController is created when the
/// CreatePasswordThreeScreen is first loaded.
class CreatePasswordThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePasswordThreeController());
  }
}
