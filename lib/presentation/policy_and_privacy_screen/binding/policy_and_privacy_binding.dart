import '../controller/policy_and_privacy_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PolicyAndPrivacyScreen.
///
/// This class ensures that the PolicyAndPrivacyController is created when the
/// PolicyAndPrivacyScreen is first loaded.
class PolicyAndPrivacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PolicyAndPrivacyController());
  }
}
