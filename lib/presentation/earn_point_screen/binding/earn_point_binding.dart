import '../controller/earn_point_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EarnPointScreen.
///
/// This class ensures that the EarnPointController is created when the
/// EarnPointScreen is first loaded.
class EarnPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EarnPointController());
  }
}
