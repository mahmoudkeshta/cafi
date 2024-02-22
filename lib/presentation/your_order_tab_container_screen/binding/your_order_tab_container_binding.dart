import '../controller/your_order_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the YourOrderTabContainerScreen.
///
/// This class ensures that the YourOrderTabContainerController is created when the
/// YourOrderTabContainerScreen is first loaded.
class YourOrderTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourOrderTabContainerController());
  }
}
