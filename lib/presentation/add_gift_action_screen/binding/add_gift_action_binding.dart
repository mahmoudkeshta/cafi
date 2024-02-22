import '../controller/add_gift_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddGiftActionScreen.
///
/// This class ensures that the AddGiftActionController is created when the
/// AddGiftActionScreen is first loaded.
class AddGiftActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddGiftActionController());
  }
}
