import '../controller/invioce_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InvioceScreen.
///
/// This class ensures that the InvioceController is created when the
/// InvioceScreen is first loaded.
class InvioceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InvioceController());
  }
}
