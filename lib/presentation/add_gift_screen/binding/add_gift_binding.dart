import '../controller/add_gift_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddGiftScreen.
///
/// This class ensures that the AddGiftController is created when the
/// AddGiftScreen is first loaded.
class AddGiftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddGiftController());
  }
}
