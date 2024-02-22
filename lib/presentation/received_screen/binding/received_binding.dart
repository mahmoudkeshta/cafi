import '../controller/received_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReceivedScreen.
///
/// This class ensures that the ReceivedController is created when the
/// ReceivedScreen is first loaded.
class ReceivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceivedController());
  }
}
