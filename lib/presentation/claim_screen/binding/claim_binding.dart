import '../controller/claim_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ClaimScreen.
///
/// This class ensures that the ClaimController is created when the
/// ClaimScreen is first loaded.
class ClaimBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClaimController());
  }
}
