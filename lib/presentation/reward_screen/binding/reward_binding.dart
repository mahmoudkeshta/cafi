import '../controller/reward_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RewardScreen.
///
/// This class ensures that the RewardController is created when the
/// RewardScreen is first loaded.
class RewardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RewardController());
  }
}
