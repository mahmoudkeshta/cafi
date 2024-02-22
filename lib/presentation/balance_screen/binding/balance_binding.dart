import '../controller/balance_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BalanceScreen.
///
/// This class ensures that the BalanceController is created when the
/// BalanceScreen is first loaded.
class BalanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BalanceController());
  }
}
