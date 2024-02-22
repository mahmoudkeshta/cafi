import '../controller/invite_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InviteScreen.
///
/// This class ensures that the InviteController is created when the
/// InviteScreen is first loaded.
class InviteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InviteController());
  }
}
