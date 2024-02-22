import '../controller/waiting_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WaitingScreen.
///
/// This class ensures that the WaitingController is created when the
/// WaitingScreen is first loaded.
class WaitingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WaitingController());
  }
}
