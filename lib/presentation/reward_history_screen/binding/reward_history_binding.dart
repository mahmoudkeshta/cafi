import '../controller/reward_history_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RewardHistoryScreen.
///
/// This class ensures that the RewardHistoryController is created when the
/// RewardHistoryScreen is first loaded.
class RewardHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RewardHistoryController());
  }
}
