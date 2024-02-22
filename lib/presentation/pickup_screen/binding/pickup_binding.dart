import '../controller/pickup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PickupScreen.
///
/// This class ensures that the PickupController is created when the
/// PickupScreen is first loaded.
class PickupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PickupController());
  }
}
