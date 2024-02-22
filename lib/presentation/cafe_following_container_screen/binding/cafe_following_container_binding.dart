import '../controller/cafe_following_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CafeFollowingContainerScreen.
///
/// This class ensures that the CafeFollowingContainerController is created when the
/// CafeFollowingContainerScreen is first loaded.
class CafeFollowingContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CafeFollowingContainerController());
  }
}
