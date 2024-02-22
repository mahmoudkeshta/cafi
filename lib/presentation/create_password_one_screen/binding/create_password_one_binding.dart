import '../controller/create_password_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatePasswordOneScreen.
///
/// This class ensures that the CreatePasswordOneController is created when the
/// CreatePasswordOneScreen is first loaded.
class CreatePasswordOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePasswordOneController());
  }
}
