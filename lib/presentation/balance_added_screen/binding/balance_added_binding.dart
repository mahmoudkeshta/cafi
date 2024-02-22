import '../controller/balance_added_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BalanceAddedScreen.
///
/// This class ensures that the BalanceAddedController is created when the
/// BalanceAddedScreen is first loaded.
class BalanceAddedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BalanceAddedController());
  }
}
